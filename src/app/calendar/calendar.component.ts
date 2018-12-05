import { CompareResult } from './../over-view-summary/over-view-summary.component';
import { Router } from '@angular/router';
import { ValueService } from './../_services/value.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-calendar',
  templateUrl: './calendar.component.html',
  styleUrls: ['./calendar.component.css']
})
export class CalendarComponent implements OnInit {
  dateFrom: Date;
  dateTo: Date;
  compare_dateFrom: Date;
  compare_dateTo: Date;

  constructor(public _apiService: ValueService, private _router: Router) {}

  ngOnInit() {
    if (this._apiService.dateFrom) {
      this.dateFrom = this._apiService.dateFrom;
    }
    if (this._apiService.dateTo) {
      this.dateTo = this._apiService.dateTo;
    }
    if (this._apiService.compare_dateFrom) {
      this.compare_dateFrom = this._apiService.compare_dateFrom;
    }
    if (this._apiService.compare_dateTo) {
      this.compare_dateTo = this._apiService.compare_dateTo;
    }
  }

  setDateToday() {
    const today = new Date();
    const yesterday = new Date(new Date().setDate(new Date().getDate() - 1));
    const today_str = today.toLocaleDateString('en-us') + ',00:00:00';
    const yesterday_str = yesterday.toLocaleDateString('en-us') + ',00:00:00';
    this.dateTo = today;
    this.dateFrom = new Date(today_str);
    this.compare_dateTo = yesterday;
    this.compare_dateFrom = new Date(yesterday_str);
  }
  setDateYesterday() {
    const date = new Date(new Date().setDate(new Date().getDate() - 1));
    const compare_date = new Date(new Date().setDate(new Date().getDate() - 2));
    this.dateFrom = new Date(date.toLocaleDateString('en-us') + ',00:00:00');
    this.dateTo = new Date(date.toLocaleDateString('en-us') + ',23:59:59');
    this.compare_dateFrom = new Date(
      compare_date.toLocaleDateString('en-us') + ',00:00:00'
    );
    this.compare_dateTo = new Date(
      compare_date.toLocaleDateString('en-us') + ',23:59:59'
    );
  }
  setDateWeekToDate() {
    const monday = getMonday(new Date());
    this.dateFrom = new Date(monday.toLocaleDateString('en-us'));
    this.dateTo = new Date();
    const compare_dateFrom_str = new Date(
      new Date().setDate(this.dateFrom.getDate() - 7)
    ).toLocaleDateString('en-us');
    this.compare_dateFrom = new Date(compare_dateFrom_str);
    this.compare_dateTo = new Date(
      new Date().setDate(new Date().getDate() - 7)
    );
  }

  setDateLastWeek() {
    const last_sunday = getLastSunday(new Date());
    const date_str_from = last_sunday.toLocaleDateString('en-us') + ',00:00:00';
    const date_str_to = last_sunday.toLocaleDateString('en-us') + ',23:59:59';
    this.dateFrom = new Date(
      new Date(
        new Date().setDate(new Date(date_str_from).getDate() - 6)
      ).toLocaleDateString('en-us') + ',00:00:00'
    );
    this.dateTo = new Date(date_str_to);
    this.compare_dateFrom = new Date(
      new Date(
        new Date().setDate(new Date(date_str_from).getDate() - 13)
      ).toLocaleDateString('en-us') + ',00:00:00'
    );
    this.compare_dateTo = new Date(
      new Date(
        new Date().setDate(new Date(date_str_to).getDate() - 7)
      ).toLocaleDateString('en-us') + ',23:59:59'
    );
  }

  setDateLast7Days() {
    this.dateFrom = new Date(
      new Date(new Date().setDate(new Date().getDate() - 6)).toLocaleDateString(
        'en-us'
      ) + ',00:00:00'
    );
    this.dateTo = new Date();
    this.compare_dateFrom = new Date(
      new Date(
        new Date().setDate(new Date().getDate() - 13)
      ).toLocaleDateString('en-us') + ',00:00:00'
    );
    this.compare_dateTo = new Date(
      new Date(new Date().setDate(new Date().getDate() - 7)).toLocaleDateString(
        'en-us'
      ) + ',23:59:59'
    );
  }

  setDateMonthToDate() {
    const date = new Date();
    this.dateTo = new Date();
    this.dateFrom = new Date(date.getFullYear(), date.getMonth(), 1);
    this.compare_dateTo = new Date(
      date.getFullYear(),
      date.getMonth() - 1,
      date.getDate(),
      date.getHours(),
      date.getMinutes(),
      date.getSeconds()
    );
    this.compare_dateFrom = new Date(
      date.getFullYear(),
      date.getMonth() - 1,
      1
    );
  }
  setDateLastMonth() {
    const date = new Date();
    this.dateFrom = new Date(date.getFullYear(), date.getMonth() - 1, 1);
    this.dateTo = new Date(date.getFullYear(), date.getMonth(), 0, 23, 59, 59);
    this.compare_dateFrom = new Date(
      date.getFullYear(),
      date.getMonth() - 2,
      1
    );
    this.compare_dateTo = new Date(
      date.getFullYear(),
      date.getMonth() - 1,
      0,
      23,
      59,
      59
    );
  }
  setDateLast30Days() {
    this.dateFrom = new Date(
      new Date(
        new Date().setDate(new Date().getDate() - 29)
      ).toLocaleDateString('en-us') + ',00:00:00'
    );
    this.dateTo = new Date();
    this.compare_dateFrom = new Date(
      new Date(
        new Date().setDate(new Date().getDate() - 59)
      ).toLocaleDateString('en-us') + ',00:00:00'
    );
    this.compare_dateTo = new Date(
      new Date(
        new Date().setDate(new Date().getDate() - 30)
      ).toLocaleDateString('en-us') + ',23:59:59'
    );
  }

  saveDateFrom() {
    this._apiService.dateFrom = this.dateFrom;
    localStorage.setItem('dateFrom', this.dateFrom.toString());
  }
  saveDateTo() {
    this._apiService.dateTo = this.dateTo;
    localStorage.setItem('dateTo', this.dateTo.toString());
  }
  saveCompareDateFrom() {
    this._apiService.compare_dateFrom = this.compare_dateFrom;
    localStorage.setItem('compare_dateFrom', this.compare_dateFrom.toString());
  }
  saveCompareDateTo() {
    this._apiService.compare_dateTo = this.compare_dateTo;
    localStorage.setItem('compare_dateTo', this.compare_dateTo.toString());
  }

  saveChange() {
    this.saveDateFrom();
    this.saveDateTo();
    this.saveCompareDateFrom();
    this.saveCompareDateTo();
    this._apiService.dataPickerIsShow = false;
    this._router.navigateByUrl(this._router.url);
  }

  colseDatePicker() {
    this._apiService.dataPickerIsShow = false;
  }
}

function getMonday(d) {
  d = new Date(d);
  const day = d.getDay(),
    diff = d.getDate() - day + (day === 0 ? -6 : 1); // adjust when day is sunday
  return new Date(d.setDate(diff));
}

function getLastSunday(d) {
  d = new Date(d);
  const day = d.getDay(),
    diff = d.getDate() - day + (day === 0 ? -7 : 0); // adjust when day is sunday
  return new Date(d.setDate(diff));
}
