import { AuthenticationService } from './../_services/authentication.service';
import { ValueService } from './../_services/value.service';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { Router } from '@angular/router';

export interface Shop {
  shop_id: number;
  shop_name: string;
  server: string;
  database: string;
}
@Component({
  selector: 'app-overview',
  templateUrl: './overview.component.html',
  styleUrls: ['./overview.component.css']
})
export class OverviewComponent implements OnInit, OnDestroy {
  shopList: Shop[];
  select_shop_id: number;
  token: string;
  apiSubscribtion: any;
  show = true;
  constructor(private _router: Router, private _apiService: ValueService) {}

  ngOnInit() {
    this.token = localStorage.getItem('current_token');
    this.apiSubscribtion = this._apiService.getShops().subscribe(result => {
      this.shopList = result['shops'];
      if (this.shopList.length < 2) {
        this.navTo(this.shopList[0].shop_id);
      }
    });
  }

  ngOnDestroy() {
    if (this.apiSubscribtion) {
      this.apiSubscribtion.unsubscribe();
    }
  }
  navTo(shop_id: number) {
    this.select_shop_id = shop_id;
    this._apiService.shop_id = shop_id + '';
    localStorage.setItem('shop_id', shop_id.toString());
    /** set time to today  */
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
    /** set default date range is today, every time customer login */
    this._apiService.dateFrom = begin_of_today;
    this._apiService.dateTo = now;
    this._apiService.compare_dateFrom = begin_of_yesterday;
    this._apiService.compare_dateTo = now_of_yesterday;

    this._router.navigateByUrl('/overview/summary');
  }
}
