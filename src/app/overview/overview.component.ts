import { AuthenticationService } from './../_services/authentication.service';
import { ValueService } from './../_services/value.service';
import { Component, OnInit } from '@angular/core';
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
export class OverviewComponent implements OnInit {
  shopList: Shop[];
  select_shop_id: number;
  token: string;

  show = true;
  constructor(
    private _router: Router,
    private _apiService: ValueService,
    private _auth: AuthenticationService
  ) {}

  ngOnInit() {
    this.token = localStorage.getItem('current_token');
    this._apiService.getShops().subscribe(result => {
      this.shopList = result['shops'];
      if (this.shopList.length < 2) {
        this.show = false;
        this.select_shop_id = this.shopList[0].shop_id;
        localStorage.setItem('shop_id', this.select_shop_id.toString());
        this._router.navigateByUrl('/overview/summary/' + this.select_shop_id);
      }
    });
  }

  navTo(shop_id: number) {
    console.log(shop_id + '');
    this.select_shop_id = shop_id;
    this._apiService.shop_id = shop_id + '';
    localStorage.setItem('shop_id', shop_id.toString());
    this._router.navigateByUrl('/overview/summary/');
  }

  logout() {
    this._auth.logout();
    this._router.navigateByUrl('login');
  }

  showDatePicker() {
    this._apiService.dataPickerIsShow = true;
  }
}
