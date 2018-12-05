import { ValueService } from './../_services/value.service';
import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-head',
  templateUrl: './head.component.html',
  styleUrls: ['./head.component.css']
})
export class HeadComponent implements OnInit {
  methods: String[] = [
    'Dash Board',
    'Sales By Category',
    'Sales By Item',
    // 'Sales by Hour',
    'Sales by Day',
    // 'Void Log',
    'Unpaid Order'
  ];

  constructor(private _router: Router, public _apiService: ValueService) {}

  ngOnInit() {}

  onChangeOption(str: string) {
    this._apiService.method = str;
    switch (str) {
      case 'Sales By Category':
        this._router.navigateByUrl('/report/salesbycategory');
        break;
      case 'Sales By Item':
        this._router.navigateByUrl('/report/salesbyitem');
        break;
      case 'Sales by Hour':
        this._router.navigateByUrl('/report/salesbyhour');
        break;
      case 'Sales by Day':
        this._router.navigateByUrl('/report/salesbyday');
        break;
      case 'Void Log':
        this._router.navigateByUrl('/report/voidlog');
        break;
      case 'Unpaid Order':
        this._router.navigateByUrl('/report/unpaidorder');
        break;
      case 'Dash Board':
        this._router.navigateByUrl('/overview/summary');
        break;
      default:
        break;
    }
  }
  back() {
    this._router.navigateByUrl('overview');
  }

  showLogout() {
    this._apiService.showLogout = true;
  }

  showDatePicker() {
    this._apiService.dataPickerIsShow = true;
  }
}
