import { Router, ActivatedRoute, Route } from '@angular/router';
import { ValueService } from './../_services/value.service';
import { Component, OnInit } from '@angular/core';

import { formatDate } from '@angular/common';

@Component({
  selector: 'app-calendar',
  templateUrl: './calendar.component.html',
  styleUrls: ['./calendar.component.css']
})
export class CalendarComponent implements OnInit {
  dateFrom: Date;
  dateTo: Date;

  constructor(public _apiService: ValueService, private _router: Router) {}

  ngOnInit() {
    if (localStorage.getItem('dateFrom')) {
      this.dateFrom = new Date(localStorage.getItem('dateFrom'));
    }
    if (localStorage.getItem('dateTo')) {
      this.dateTo = new Date(localStorage.getItem('dateTo'));
    }
  }
  saveDateFrom() {
    this._apiService.dateFrom = this.dateFrom;
    localStorage.setItem('dateFrom', this.dateFrom.toString());
  }

  saveDateTo() {
    this._apiService.dateTo = this.dateTo;
    localStorage.setItem('dateTo', this.dateTo.toString());
  }

  saveChange() {
    this.saveDateFrom();
    this.saveDateTo();
    this._apiService.dataPickerIsShow = false;
    this._router.navigateByUrl(this._router.url);
  }

  colseDatePicker() {
    this._apiService.dataPickerIsShow = false;
  }
}
