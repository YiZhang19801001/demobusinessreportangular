import { Component, OnInit, OnDestroy } from '@angular/core';
import { ValueService } from '../_services/value.service';
import * as Chart from 'chart.js';
import { Sort } from '@angular/material';
import { NavigationEnd, Router } from '@angular/router';

export class Category {
  category_name: string;
  total_amount: number;
}

@Component({
  selector: 'app-salesbycategory',
  templateUrl: './salesbycategory.component.html',
  styleUrls: ['./salesbycategory.component.css']
})
export class SalesbycategoryComponent implements OnInit, OnDestroy {
  shop_id: string;
  chart: any;
  chart_category: any;
  categories: Category[] = new Array<Category>();
  sortedCategories: Category[];
  navigationSubscription;
  constructor(private _apiService: ValueService, private _router: Router) {}

  sortData(sort: Sort) {
    const data = this.categories.slice();
    if (!sort.active || sort.direction === '') {
      this.sortedCategories = data;
      return;
    }
    this.sortedCategories = data.sort((a, b) => {
      const isAsc = sort.direction === 'asc';
      switch (sort.active) {
        case 'category_name':
          return compare(a.category_name, b.category_name, isAsc);
        case 'total_amount':
          return compare(a.total_amount, b.total_amount, isAsc);
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
    this.initilized();
    this.navigationSubscription = this._router.events.subscribe((e: any) => {
      // If it is a NavigationEnd event re-initalise the component
      if (e instanceof NavigationEnd) {
        this.initilized();
      }
    });
  }

  initilized() {
    this.shop_id = localStorage.getItem('shop_id');
    this._apiService.getByCategory().subscribe(res => {
      if (res instanceof Array) {
        this.categories = res;
        this.sortedCategories = this.categories.slice();
        res.forEach(function(e, i) {
          e.color = 'hsl(' + (i / res.length) * 360 + ', 50%, 50%)';
        });
        const cate_name = res.map(data => data.category_name);
        const total_amount = res.map(data => data.total_amount);
        const colors = res.map(data => data.color);
        const canvas = <HTMLCanvasElement>(
          document.getElementById('chart_category')
        );
        const ctx = canvas.getContext('2d');

        this.chart = new Chart(ctx, {
          type: 'horizontalBar',
          data: {
            labels: cate_name,
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
              text: 'sales by category'
            },
            scales: {
              yAxes: [
                {
                  barThickness: 16,
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
