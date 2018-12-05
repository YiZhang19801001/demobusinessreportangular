import { ValueService } from './../_services/value.service';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { Sort } from '@angular/material';
import * as Chart from 'chart.js';
import { NavigationEnd, Router } from '@angular/router';
export class ApiValueArr {
  data: ApiValue[] = new Array<ApiValue>();
}
export class ApiValueItem {
  single_date: string;
  sum_amount: number;
}
export class ApiValue {
  id: number;
  value: ApiValueItem = new ApiValueItem();
  value_Compared: ApiValueItem = new ApiValueItem();
}

@Component({
  selector: 'app-salesbyday',
  templateUrl: './salesbyday.component.html',
  styleUrls: ['./salesbyday.component.css']
})
export class SalesbydayComponent implements OnInit, OnDestroy {
  shop_id: string;
  chart: any;
  chart_item: any;
  list: ApiValue[] = new Array<ApiValue>();
  sortedlist: ApiValue[];
  mode = true;
  navigationSubscription;
  apiValueSubscription;
  constructor(private _apiService: ValueService, private _router: Router) {}
  ngOnDestroy() {
    // avoid memory leaks here by cleaning up after ourselves. If we
    // don't then we will continue to run our initialiseInvites()
    // method on every navigationEnd event.
    if (this.navigationSubscription) {
      this.navigationSubscription.unsubscribe();
    }
    if (this.apiValueSubscription) {
      this.apiValueSubscription.unsubscribe();
    }
  }
  sortData(sort: Sort) {
    const data = this.list.slice();
    if (!sort.active || sort.direction === '') {
      this.sortedlist = data;
      return;
    }
    this.sortedlist = data.sort((a, b) => {
      const isAsc = sort.direction === 'asc';
      switch (sort.active) {
        case 'single_date':
          return compare(a.value.single_date, b.value.single_date, isAsc);
        case 'sum_amount':
          return compare(a.value.sum_amount, b.value.sum_amount, isAsc);
        case 'single_date_compared':
          return compare(
            a.value_Compared.single_date,
            b.value_Compared.single_date,
            isAsc
          );
        case 'sum_amount_compared':
          return compare(
            a.value_Compared.sum_amount,
            b.value_Compared.sum_amount,
            isAsc
          );
        default:
          return 0;
      }
    });
  }
  ngOnInit() {
    this.initilize();
    this.navigationSubscription = this._router.events.subscribe((e: any) => {
      // If it is a NavigationEnd event re-initalise the component
      if (e instanceof NavigationEnd) {
        this.initilize();
      }
    });
  }
  initilize() {
    this._apiService.showLoadingCover = true;
    this.apiValueSubscription = this._apiService.getByDay().subscribe(res => {
      if (res instanceof Array) {
        this.list = res;
        this.sortedlist = this.list.slice();
        if (res.length === 0) {
          this.mode = false;
          this._apiService.showLoadingCover = false;
          return;
        }
        res.forEach(function(e, i) {
          // e.color = 'hsl(' + (i / res.length) * 360 + ', 50%, 50%)';
          // const n = e['value']['single_date'].lastIndexOf('T');
          // const date = e['value']['single_date'].substring(5, n);
          // e.label = date;
          // const n_compared = e['value_Compare']['single_date'].lastIndexOf('T');
          // const date_compared = e['value_Compared']['single_date'].substring(
          //   5,
          //   n_compared
          // );
          // e.label_compared = date_compared;
        });
        const single_date = res.map(data => data.value.single_date);
        const sum_amount = res.map(data => data.value.sum_amount);
        const sum_amount_compared = res.map(
          data => data.value_Compared.sum_amount
        );

        // const colors = res.map(data => data.color);
        const canvas = <HTMLCanvasElement>document.getElementById('chart_item');
        const ctx = canvas.getContext('2d');

        this.chart = new Chart(ctx, {
          type: 'horizontalBar',
          data: {
            labels: single_date,
            datasets: [
              {
                label: 'selected',
                data: sum_amount,
                backgroundColor: '#ffc700',
                borderWidth: 1
              },
              {
                label: 'compared',
                data: sum_amount_compared,
                backgroundColor: '#1e1e1e',
                borderWidth: 1
              }
            ]
          },
          options: {
            responsive: true,
            maintainAspectRatio: false,
            title: {
              display: true,
              text: 'sales by day'
            },
            scales: {
              yAxes: [
                {
                  ticks: {
                    beginAtZero: true
                  }
                }
              ]
            }
          }
        });
      }
      this._apiService.showLoadingCover = false;
    });
  }
}

function compare(a: number | string, b: number | string, isAsc: boolean) {
  return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
}
