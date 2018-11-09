import { ValueService } from './../_services/value.service';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { Sort } from '@angular/material';
import * as Chart from 'chart.js';
import { NavigationEnd, Router } from '@angular/router';
export class ApiValue {
  single_date: string;
  sum_amount: number;
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
  navigationSubscription;
  constructor(private _apiService: ValueService, private _router: Router) {}
  ngOnDestroy() {
    // avoid memory leaks here by cleaning up after ourselves. If we
    // don't then we will continue to run our initialiseInvites()
    // method on every navigationEnd event.
    if (this.navigationSubscription) {
      this.navigationSubscription.unsubscribe();
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
          return compare(a.single_date, b.single_date, isAsc);
        case 'sum_amount':
          return compare(a.sum_amount, b.sum_amount, isAsc);
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
    this.shop_id = localStorage.getItem('shop_id');
    this._apiService.getByDay().subscribe(res => {
      if (res instanceof Array) {
        this.list = res;
        this.sortedlist = this.list.slice();
        res.forEach(function(e, i) {
          e.color = 'hsl(' + (i / res.length) * 360 + ', 50%, 50%)';
          const n = e['single_date'].lastIndexOf('T');
          const date = e['single_date'].substring(5, n);
          e.label = date;
        });
        const single_date = res.map(data => data.label);
        const sum_amount = res.map(data => data.sum_amount);
        const colors = res.map(data => data.color);
        const canvas = <HTMLCanvasElement>document.getElementById('chart_item');
        const ctx = canvas.getContext('2d');

        this.chart = new Chart(ctx, {
          type: 'horizontalBar',
          data: {
            labels: single_date,
            datasets: [
              {
                label: 'amount',
                data: sum_amount,
                backgroundColor: colors,
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
    });
  }
}

function compare(a: number | string, b: number | string, isAsc: boolean) {
  return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
}
