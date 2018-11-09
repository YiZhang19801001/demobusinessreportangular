import { ValueService } from './../_services/value.service';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { CalendarComponent } from '../calendar/calendar.component';

@Component({
  selector: 'app-report',
  templateUrl: './report.component.html',
  styleUrls: ['./report.component.css']
})
export class ReportComponent implements OnInit {
  dateFrom: Date;
  dateTo: Date;

  page: String;
  methods: String[] = [
    'Sales By Category',
    'Sales By Item',
    // 'Sales by Hour',
    'Sales by Day',
    'Void Log',
    'Unpaid Order'
  ];
  constructor(private router: Router, private _apiService: ValueService) {}

  onChangeOption(str: string) {
    this.page = str;
    switch (str) {
      case 'Sales By Category':
        this.router.navigateByUrl('/report/salesbycategory');
        break;
      case 'Sales By Item':
        this.router.navigateByUrl('/report/salesbyitem');
        break;
      case 'Sales by Hour':
        this.router.navigateByUrl('/report/salesbyhour');
        break;
      case 'Sales by Day':
        this.router.navigateByUrl('/report/salesbyday');
        break;
      case 'Void Log':
        this.router.navigateByUrl('/report/voidlog');
        break;
      case 'Unpaid Order':
        this.router.navigateByUrl('/report/unpaidorder');
        break;

      default:
        break;
    }
  }
  ngOnInit() {}
  back() {
    this.router.navigateByUrl('overview');
  }

  showDatePicker() {
    this._apiService.dataPickerIsShow = true;
  }
  // onChangeDate() {
  //   this._srs.date_from = this.dateFrom;
  //   this._srs.date_to = this.dateTo;

  //   switch (this.page) {
  //     case 'Sales Summary':
  //       this.router.navigateByUrl(
  //         '/report/summary/' + this._srs.select_shop_id
  //       );
  //       break;
  //     case 'Sales By Category':
  //       this.router.navigateByUrl('/report/salesbycategory');
  //       break;
  //     case 'Sales By Item':
  //       this.router.navigateByUrl('/report/salesbyitem');
  //       break;
  //     case 'Sales by Hour':
  //       this.router.navigateByUrl('/report/salesbyhour');
  //       break;
  //     case 'Sales by Day':
  //       this.router.navigateByUrl('/report/salesbyday');
  //       break;
  //     case 'Void Log':
  //       this.router.navigateByUrl('/report/voidlog');
  //       break;
  //     case 'Unpaid Order':
  //       this.router.navigateByUrl('/report/unpaidorder');
  //       break;

  //     default:
  //       break;
  //   }
  // }
}
