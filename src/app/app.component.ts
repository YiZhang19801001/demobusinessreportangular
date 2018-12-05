import { ValueService } from './_services/value.service';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'Demo Business Report';

  /**
   *
   */
  constructor(public _apiService: ValueService, private _router: Router) {}

  ngOnInit() {
    const now = new Date();
    const begin_of_today = new Date(
      now.getFullYear(),
      now.getMonth(),
      now.getDate(),
      0,
      0,
      0
    );
    const begin_of_yesterday = new Date(
      now.getFullYear(),
      now.getMonth(),
      now.getDate() - 1,
      0,
      0,
      0
    );
    const now_of_yesterday = new Date(
      now.getFullYear(),
      now.getMonth(),
      now.getDate() - 1,
      now.getHours(),
      now.getMinutes(),
      now.getSeconds()
    );
    /** initialize shop_id, and time */
    if (localStorage.getItem('shop_id')) {
      this._apiService.shop_id = localStorage.getItem('shop_id');
    }

    /** set default date range is today, every time customer login */
    this._apiService.dateFrom = begin_of_today;
    this._apiService.dateTo = now;
    this._apiService.compare_dateFrom = begin_of_yesterday;
    this._apiService.compare_dateTo = now_of_yesterday;

    /** if no exist date recorded, set select period today->yesterday, compare period yeserday->the day before yeserday */
    // if (localStorage.getItem('dateFrom')) {
    //   const new_date = new Date(localStorage.getItem('dateFrom'));
    //   this._apiService.dateFrom = new Date(new_date);
    // } else {
    //   this._apiService.dateFrom = today;
    // }

    // if (localStorage.getItem('dateTo')) {
    //   const new_date = new Date(localStorage.getItem('dateTo'));
    //   this._apiService.dateTo = new_date;
    // } else {
    //   this._apiService.dateTo = yesterday;
    // }

    // if (localStorage.getItem('compare_dateFrom')) {
    //   const new_date = new Date(localStorage.getItem('compare_dateFrom'));
    //   this._apiService.compare_dateFrom = new_date;
    // } else {
    //   this._apiService.compare_dateFrom = yesterday;
    // }

    // if (localStorage.getItem('compare_dateTo')) {
    //   const new_date = new Date(localStorage.getItem('compare_dateTo'));
    //   this._apiService.compare_dateTo = new_date;
    // } else {
    //   this._apiService.compare_dateTo = before_yesterday;
    // }
  }
}
