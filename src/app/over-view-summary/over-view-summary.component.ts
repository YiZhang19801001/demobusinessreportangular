import { ValueService } from './../_services/value.service';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { map } from 'rxjs/operators';
import * as Chart from 'chart.js';
import { Router, ActivatedRoute, NavigationEnd } from '@angular/router';
export class SummaryValue {
  number_Docket: number;
  refund_Amount: number;
  refund_Number_Of_Item: number;
  shopId: number;
  total_Amount: number;
  total_Discount: number;
}
export class VoidLog {
  staff_name: string;
  item_name: string;
  quantity: number;
}
@Component({
  selector: 'app-over-view-summary',
  templateUrl: './over-view-summary.component.html',
  styleUrls: ['./over-view-summary.component.css']
})
export class OverViewSummaryComponent implements OnInit, OnDestroy {
  shop_id: number;
  cate_name: string[];
  total_amount: number[];
  summary_value: SummaryValue = new SummaryValue();
  canvas: any;
  ctx: any;
  chart_category: any;
  chart_item: any;
  chart_unpaid: any;

  chart_day: any;
  voidlogs: VoidLog[] = new Array<VoidLog>();

  navigationSubscription;
  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private _apiService: ValueService
  ) {}

  ngOnInit() {
    this.initialize();
    // Use Router class to subscribe to events
    // When a route event occurs use the active route to update the parameter needed
    this.navigationSubscription = this.router.events.subscribe((e: any) => {
      // If it is a NavigationEnd event re-initalise the component
      if (e instanceof NavigationEnd) {
        this.initialize();
      }
    });
    // this.route.params.subscribe(val => {
    //   // console.log('route snapshot paramMap is : ', this.route.snapshot.url);
    //   // console.log('router: ', this.router.url);
    //   const id = +this.route.snapshot.paramMap.get('id');
    //   this._apiService.shop_id = id + '';
    //   this._apiService.getSummary().subscribe(res => {
    //     this.summary_value = res as SummaryValue;
    //   });
    //   this.renderCategoryChart();
    //   this.renderItemChart();
    //   this.renderDayChart();
    //   this.renderUnpaidOrder();
    //   this.renderVoidLog();
    // });
  }

  initialize() {
    // const id = +this.route.snapshot.paramMap.get('id');
    // this._apiService.shop_id = id + '';
    this._apiService.getSummary().subscribe(res => {
      this.summary_value = res as SummaryValue;
    });
    // this.renderCategoryChart();
    // this.renderItemChart();
    // this.renderDayChart();
    // this.renderUnpaidOrder();
    // this.renderVoidLog();
  }

  ngOnDestroy() {
    // avoid memory leaks here by cleaning up after ourselves. If we
    // don't then we will continue to run our initialiseInvites()
    // method on every navigationEnd event.
    if (this.navigationSubscription) {
      this.navigationSubscription.unsubscribe();
    }
  }

  renderCategoryChart() {
    this._apiService.getByCategory().subscribe(res => {
      if (res instanceof Array) {
        res.forEach(function(e, i) {
          e.color = 'hsl(' + (i / res.length) * 360 + ', 50%, 50%)';
        });
        this.cate_name = res.map(data => data.category_name);
        this.total_amount = res.map(data => data.total_amount);
        const colors = res.map(data => data.color);
        this.canvas = document.getElementById('chart_category');
        this.ctx = this.canvas.getContext('2d');

        this.chart_category = new Chart(this.ctx, {
          type: 'pie',
          data: {
            datasets: [
              {
                label: 'category name',
                data: this.total_amount,
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
            }
          }
        });
      }
    });
  }

  renderItemChart() {
    this._apiService.getByItem().subscribe(res => {
      if (res instanceof Array) {
        res.forEach(function(e, i) {
          e.color = 'hsl(' + (i / res.length) * 360 + ', 50%, 50%)';
        });
        const itemNames = res.map(data => data.itemName);
        const quantites = res.map(data => data.quantity);
        const colors = res.map(data => data.color);
        // const total_amounts = res.map(data => data.total_amount);
        const canvas = <HTMLCanvasElement>document.getElementById('chart_item');
        const ctx = canvas.getContext('2d');
        this.chart_item = new Chart(ctx, {
          type: 'horizontalBar',
          data: {
            labels: itemNames,
            datasets: [
              {
                label: 'quantity',
                data: quantites,
                backgroundColor: colors,
                borderWidth: 1
              }
            ]
          },
          options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
              yAxes: [
                {
                  ticks: {
                    beginAtZero: true
                  }
                }
              ]
            },
            title: {
              display: true,
              text: 'sales by item'
            }
          }
        });
      }
    });
  }

  renderDayChart() {
    this._apiService.getByDay().subscribe(res => {
      if (res instanceof Array) {
        res.forEach(function(e) {
          const n = e['single_date'].lastIndexOf('T');
          const date = e['single_date'].substring(5, n);
          e.label = date;
        });

        const labels = res.map(data => data.label);
        const sums = res.map(data => data.sum_amount);

        const canvas = <HTMLCanvasElement>document.getElementById('chart_day');
        const ctx = canvas.getContext('2d');

        this.chart_day = new Chart(ctx, {
          type: 'bar',
          data: {
            labels: labels,
            datasets: [
              {
                label: 'amount',
                data: sums,
                backgroundColor: '#ffc700',
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
            }
          }
        });
      }
    });
  }

  renderUnpaidOrder() {
    this._apiService.getUnpaidOrder().subscribe(res => {
      if (res instanceof Array) {
        // const labels = res.map(data => data.customer);
        // const sums = res.map(data => data.total_amount);
        const labels = res.map(data => data.customer);
        const sums = res.map(data => data.total_amount);
        const canvas = <HTMLCanvasElement>(
          document.getElementById('chart_unpaid')
        );
        const ctx = canvas.getContext('2d');

        this.chart_unpaid = new Chart(ctx, {
          type: 'bar',
          data: {
            labels: labels,
            datasets: [
              {
                label: 'amount',
                data: sums,
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
              text: 'unpaid order'
            }
          }
        });
      }
    });
  }

  renderVoidLog() {
    this._apiService.getVoidLog().subscribe(res => {
      // this.voidlogs = res as VoidLog[];
      if (res instanceof Array) {
        this.voidlogs = res;
      }
    });
  }

  navToCate() {
    this.router.navigateByUrl('/report/salesbycategory');
  }
  navToItem() {
    this.router.navigateByUrl('/report/salesbyitem');
  }
  navToDay() {
    this.router.navigateByUrl('/report/salesbyday');
  }
  navToVoidLog() {
    this.router.navigateByUrl('/report/voidlog');
  }
  navTounpaidorder() {
    this.router.navigateByUrl('/report/unpaidorder');
  }
}
