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
  constructor(private _apiService: ValueService, private _router: Router) {}

  ngOnInit() {
    console.log(this._router);
    if (localStorage.getItem('shop_id')) {
      this._apiService.shop_id = localStorage.getItem('shop_id');
    }

    if (localStorage.getItem('dateFrom')) {
      const new_date = new Date(localStorage.getItem('dateFrom'));
      this._apiService.dateFrom = new Date(new_date);
    }

    if (localStorage.getItem('dateTo')) {
      const new_date = new Date(localStorage.getItem('dateTo'));
      this._apiService.dateTo = new_date;
    }
  }
}
