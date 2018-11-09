import { ValueService } from './../_services/value.service';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
import { Sort } from '@angular/material';
import * as Chart from 'chart.js';
export class ApiValue {
  customer: string;
  total_amount: number;
}
@Component({
  selector: 'app-unpaid-order',
  templateUrl: './unpaid-order.component.html',
  styleUrls: ['./unpaid-order.component.css']
})
export class UnpaidOrderComponent implements OnInit, OnDestroy {
  shop_id: string;
  chart: any;
  chart_item: any;
  list: ApiValue[] = new Array<ApiValue>();
  sortedlist: ApiValue[];
  navigationSubscription;
  constructor(private _router: Router, private _apiService: ValueService) {}
  sortData(sort: Sort) {
    const data = this.list.slice();
    if (!sort.active || sort.direction === '') {
      this.sortedlist = data;
      return;
    }
    this.sortedlist = data.sort((a, b) => {
      const isAsc = sort.direction === 'asc';
      switch (sort.active) {
        case 'customer':
          return compare(a.customer, b.customer, isAsc);
        case 'total_amount':
          return compare(a.total_amount, b.total_amount, isAsc);
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
    this._apiService.getUnpaidOrder().subscribe(res => {
      if (res instanceof Array) {
        this.list = res;
        this.sortedlist = this.list.slice();
        res.forEach(function(ele, i) {
          ele.color = 'hsl(' + (i / res.length) * 360 + ', 50%, 50%)';
        });
        const customer = res.map(data => data.customer);
        const total_amount = res.map(data => data.total_amount);
        const colors = res.map(data => data.color);
        const canvas = <HTMLCanvasElement>document.getElementById('chart_item');
        const ctx = canvas.getContext('2d');

        this.chart = new Chart(ctx, {
          type: 'horizontalBar',
          data: {
            labels: customer,
            datasets: [
              {
                label: 'amount',
                data: total_amount,
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
              text: 'unpaid order'
            },
            scales: {
              yAxes: [
                {
                  // barThickness: 16,
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
  ngOnDestroy() {
    // avoid memory leaks here by cleaning up after ourselves. If we
    // don't then we will continue to run our initialiseInvites()
    // method on every navigationEnd event.
    if (this.navigationSubscription) {
      this.navigationSubscription.unsubscribe();
    }
  }
}

function compare(a: number | string, b: number | string, isAsc: boolean) {
  return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
}
