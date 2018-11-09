import { ValueService } from './../_services/value.service';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
import { Sort } from '@angular/material';
import * as Chart from 'chart.js';
export class ApiValue {
  itemName: string;
  total_amount: number;
  quantity: number;
}

@Component({
  selector: 'app-salesbyitem',
  templateUrl: './salesbyitem.component.html',
  styleUrls: ['./salesbyitem.component.css']
})
export class SalesbyitemComponent implements OnInit, OnDestroy {
  shop_id: string;
  chart: any;
  chart_item: any;
  list: ApiValue[] = new Array<ApiValue>();
  sortedlist: ApiValue[];
  navigationSubscription;
  constructor(private _apiService: ValueService, private _router: Router) {}

  sortData(sort: Sort) {
    const data = this.list.slice();
    if (!sort.active || sort.direction === '') {
      this.sortedlist = data;
      return;
    }
    this.sortedlist = data.sort((a, b) => {
      const isAsc = sort.direction === 'asc';
      switch (sort.active) {
        case 'itemName':
          return compare(a.itemName, b.itemName, isAsc);
        case 'total_amount':
          return compare(a.total_amount, b.total_amount, isAsc);
        case 'quantity':
          return compare(a.quantity, b.quantity, isAsc);
        default:
          return 0;
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
    this._apiService.getByItem().subscribe(res => {
      if (res instanceof Array) {
        this.list = res;
        this.sortedlist = this.list.slice();
        res.forEach(function(e, i) {
          e.color = 'hsl(' + (i / res.length) * 360 + ', 50%, 50%)';
        });
        const itemName = res.map(data => data.itemName);
        const quantity = res.map(data => data.quantity);
        const total_amount = res.map(data => data.total_amount);
        const colors = res.map(data => data.color);
        const canvas = <HTMLCanvasElement>document.getElementById('chart_item');
        const ctx = canvas.getContext('2d');

        this.chart = new Chart(ctx, {
          type: 'horizontalBar',
          data: {
            labels: itemName,
            datasets: [
              {
                label: 'amount',
                data: total_amount,
                backgroundColor: '#ffc700',
                borderWidth: 1
              },
              {
                label: 'quantity',
                data: quantity,
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
              text: 'sales by item'
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
