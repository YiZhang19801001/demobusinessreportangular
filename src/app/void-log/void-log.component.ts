import { ValueService } from './../_services/value.service';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { Sort } from '@angular/material';
import * as Chart from 'chart.js';
import { Router, NavigationEnd } from '@angular/router';

export class ApiValue {
  staff_name: string;
  item_name: string;
  quantity: number;
}

@Component({
  selector: 'app-void-log',
  templateUrl: './void-log.component.html',
  styleUrls: ['./void-log.component.css']
})
export class VoidLogComponent implements OnInit, OnDestroy {
  shop_id: string;
  chart: any;
  chart_item: any;
  list: ApiValue[] = new Array<ApiValue>();
  sortedlist: ApiValue[];

  mode = true;
  navigationSubscription;
  apiValueSubscription;
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
        case 'staff_name':
          return compare(a.staff_name, b.staff_name, isAsc);
        case 'item_name':
          return compare(a.item_name, b.item_name, isAsc);
        case 'quantity':
          return compare(a.quantity, b.quantity, isAsc);
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
    this.apiValueSubscription = this._apiService.getVoidLog().subscribe(res => {
      if (res instanceof Array) {
        this.list = res;
        this.sortedlist = this.list.slice();

        if (res.length === 0) {
          this.mode = false;
          this._apiService.showLoadingCover = false;
          return;
        }
        res.forEach(function(ele, i) {
          ele.color = 'hsl(' + (i / res.length) * 360 + ', 50%, 50%)';
        });
        const staff_name = res.map(data => data.staff_name);
        const item_name = res.map(data => data.item_name);
        const quantity = res.map(data => data.quantity);
        const colors = res.map(data => data.color);
        const canvas = <HTMLCanvasElement>document.getElementById('chart_item');
        const ctx = canvas.getContext('2d');

        this.chart = new Chart(ctx, {
          type: 'horizontalBar',
          data: {
            labels: staff_name,
            datasets: [
              {
                label: 'quantity',
                data: quantity,
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
              text: 'void log'
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
      this._apiService.showLoadingCover = false;
    });
  }
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
}
function compare(a: number | string, b: number | string, isAsc: boolean) {
  return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
}
