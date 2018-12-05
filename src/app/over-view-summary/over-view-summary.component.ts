import { ValueService } from './../_services/value.service';
import { Component, OnInit, OnDestroy } from '@angular/core';
import * as Chart from 'chart.js';
import { Router, NavigationEnd } from '@angular/router';
export class SummaryValue {
  shopId: number;
  summary_Items: SummaryItem[];
  hourly_Summary: HourlySummary = new HourlySummary();

  payment_Summary: PaymentSummary = new PaymentSummary();

  custom_Data_Group: CustomDataGroup = new CustomDataGroup();
}

export class CustomDataGroup {
  name: string;
  value: CustomDataItem[];
  compare_Value: CustomDataItem[];
}

export class CustomDataItem {
  name: string;
  quantity: number;

  amount: number;
  color: any;
}

export class PaymentSummary {
  name: string;
  value: PaymentValue[];
  compare_Value: PaymentValue[];
}

export class PaymentValue {
  amount: number;
  paymenttype: string;
  color: any;
}

export class HourlySummary {
  name: string;
  value: number[];
  compare_Value: number[];
}
export class SummaryItem {
  name: string;
  value: number;
  compare_Value: number;
}
export class VoidLog {
  staff_name: string;
  item_name: string;
  quantity: number;
}

export class CompareResult {
  class_name: string;
  status: string;
  value: string;
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
  chart_hour: any;
  chart_payment: any;
  chart_day: any;
  chart_custom_data_group: any;
  voidlogs: VoidLog[] = new Array<VoidLog>();

  navigationSubscription;
  getSummary;

  quantity_total: number;
  amount_total: number;
  constructor(
    // private route: ActivatedRoute,
    private router: Router,
    public _apiService: ValueService
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
    this._apiService.showLoadingCover = true;
    this.getSummary = this._apiService.getSummary().subscribe(res => {
      this.summary_value = res as SummaryValue;
      this.renderChartHour();
      this.renderPaymentChart();
      this.renderCustomDataGroupTable();
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

    if (this.getSummary) {
      this.getSummary.unsubscribe();
    }
  }

  compareHelper(name: string, value1: number, value2: number) {
    const res = new CompareResult();
    if (name === 'Total Discount' || name === 'Total Refund') {
      if (value2 === 0) {
        res.value = '0.00';
      } else {
        res.value =
          Math.round(((value1 - value2) / value2) * -10000) / 100 + '%';
      }
      if (value1 < value2) {
        res.class_name = 'compare_result_increase';
        res.status = 'decrease';
        return res;
      } else if (value1 > value2) {
        res.class_name = 'compare_result_decrease';
        res.status = 'increase';
        return res;
      } else {
        res.class_name = 'compare_result_equal';
        res.status = 'equal';
        return res;
      }
    } else {
      if (value2 === 0) {
        res.value = '0.00';
      } else {
        res.value =
          Math.round(((value1 - value2) / value2) * 10000) / 100 + '%';
      }
      if (value1 > value2) {
        res.class_name = 'compare_result_increase';
        res.status = 'increase';
        return res;
      } else if (value1 < value2) {
        res.class_name = 'compare_result_decrease';
        res.status = 'decrease';
        return res;
      } else {
        res.class_name = 'compare_result_equal';
        res.status = 'equal';
        return res;
      }
    }
  }

  renderCustomDataGroupTable() {
    let sum = 0;
    let total = 0;
    this.summary_value.custom_Data_Group.value.forEach(item => {
      sum = sum + item.quantity;
      total = total + item.amount;
    });
    this.quantity_total = sum;
    this.amount_total = Math.round(total * 100) / 100;
  }
  renderChartHour() {
    const values = this.summary_value.hourly_Summary.value;
    const compare_Values = this.summary_value.hourly_Summary.compare_Value;
    const labels = new Array();

    for (let index = 0; index < 24; index++) {
      labels.push(index + '');
    }
    const canvas = <HTMLCanvasElement>document.getElementById('chart_hour');
    const ctx = canvas.getContext('2d');

    this.chart_hour = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: labels,
        datasets: [
          {
            label: 'selected',
            data: values,
            backgroundColor: '#ffc700',
            borderWidth: 1
          },
          {
            label: 'compared',
            data: compare_Values,
            backgroundColor: '#1e1e1e',
            borderWidth: 1
          }
        ]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false
      }
    });
  }

  renderPaymentChart() {
    const values = this.summary_value.payment_Summary.value;
    const compare_values = this.summary_value.payment_Summary.compare_Value;

    values.forEach(function(e, i) {
      e.color = 'hsl(' + (i / values.length) * 360 + ', 50%, 50%)';
    });

    compare_values.forEach(function(e, i) {
      e.color = 'hsl(' + (i / values.length) * 360 + ', 50%, 50%)';
    });

    const value_type = values.map(data => data.paymenttype);
    const value_amount = values.map(data => data.amount);
    const compare_value_type = compare_values.map(data => data.paymenttype);
    const compare_value_amount = compare_values.map(data => data.amount);

    const colors = values.map(data => data.color);

    const canvas = <HTMLCanvasElement>document.getElementById('chart_payment');
    const ctx = canvas.getContext('2d');

    this.chart_payment = new Chart(ctx, {
      type: 'pie',
      data: {
        datasets: [
          {
            label: 'selected',
            data: value_amount,
            backgroundColor: colors,
            borderWidth: 1
          },
          {
            label: 'compared',
            data: compare_value_amount,
            backgroundColor: colors,
            borderWidth: 1
          }
        ],
        labels: value_type
      },
      options: {
        responsive: true,
        maintainAspectRatio: false
      }
    });
  }

  renderCustomDataGroupChart() {
    const values = this.summary_value.custom_Data_Group.value;
    const compare_values = this.summary_value.custom_Data_Group.compare_Value;

    values.forEach(function(e, i) {
      e.color = 'hsl(' + (i / values.length) * 360 + ', 50%, 50%)';
    });

    compare_values.forEach(function(e, i) {
      e.color = 'hsl(' + (i / values.length) * 360 + ', 50%, 50%)';
    });

    const value_type = values.map(data => data.name);
    const value_amount = values.map(data => data.quantity);
    const compare_value_type = compare_values.map(data => data.name);
    const compare_value_amount = compare_values.map(data => data.quantity);

    const colors = values.map(data => data.color);

    const canvas = <HTMLCanvasElement>(
      document.getElementById('chart_custom_data_group')
    );
    const ctx = canvas.getContext('2d');

    this.chart_custom_data_group = new Chart(ctx, {
      type: 'pie',
      data: {
        datasets: [
          {
            label: 'selected',
            data: value_amount,
            backgroundColor: colors,
            borderWidth: 1
          },
          {
            label: 'compared',
            data: compare_value_amount,
            backgroundColor: colors,
            borderWidth: 1
          }
        ],
        labels: value_type
      },
      options: {
        responsive: true,
        maintainAspectRatio: false
      }
    });
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
  isMoney(name: string) {
    if (name === 'Avg. Item Per Sale' || name === 'Number Of Transactions') {
      return false;
    } else {
      return true;
    }
  }
}
