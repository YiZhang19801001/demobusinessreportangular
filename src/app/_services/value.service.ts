import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
export class SearchCondition {
  shopId: string;
  dateFrom: string;
  dateTo: string;
  compare_dateFrom: string;
  compare_dateTo: string;
}

@Injectable({
  providedIn: 'root'
})
export class ValueService {
   apiUrl = 'http://101.187.98.39:5000/value/';

  // apiUrl = 'http://192.168.1.88:5000/value/';

  showLoadingCover = false;

  showLogout = false;
  dataPickerIsShow = false;
  dateFrom: Date;
  dateTo: Date;

  method: String = 'Dash Board';

  compare_dateFrom: Date;
  compare_dateTo: Date;
  arr_date: Date[];
  body: SearchCondition = new SearchCondition();

  shop_id: string;

  constructor(private _http: HttpClient) {}

  getShops() {
    return this._http.get(this.apiUrl + 'getshops');
  }

  getSummary() {
    this.getBody(1);
    return this._http.post(this.apiUrl + 'getsummary', this.body);
  }

  getByCategory() {
    this.getBody(1);
    return this._http.post(this.apiUrl + 'getbycategory', this.body);
  }

  getByItem() {
    this.getBody(1);
    return this._http.post(this.apiUrl + 'getbyitem', this.body);
  }

  getByDay() {
    this.getBody(2);
    return this._http.post(this.apiUrl + 'getbyday', this.body);
  }
  getByHour() {
    this.getBody(3);
    return this._http.post(this.apiUrl + 'getbyhour', this.body);
  }
  getVoidLog() {
    this.getBody(1);
    return this._http.post(this.apiUrl + 'getvoidlog', this.body);
  }
  getUnpaidOrder() {
    this.getBody(1);
    return this._http.post(this.apiUrl + 'getUnpaidOrder', this.body);
  }

  getBody(flag: number) {
    this.body.shopId = this.shop_id;
    switch (flag) {
      case 1:
        this.setDateByProps();
        break;
      case 2:
        if (this.dateTo.getDate() - this.dateFrom.getDate() > 1) {
          this.setDateByProps();
        } else {
          this.setBodyDateByLast7Days();
        }
        break;

      default:
        break;
    }
  }

  setDateByProps() {
    if (this.dateFrom) {
      this.body.dateFrom = this.dateFrom.toLocaleString('en-us');
    } else {
      this.body.dateFrom = new Date().toLocaleString('en-us');
    }

    if (this.dateTo) {
      this.body.dateTo = this.dateTo.toLocaleString('en-us');
    } else {
      this.body.dateTo = new Date().toLocaleString('en-us');
    }

    if (this.compare_dateTo) {
      this.body.compare_dateTo = this.compare_dateTo.toLocaleString('en-us');
    } else {
      this.body.compare_dateTo = new Date().toLocaleString('en-us');
    }

    if (this.compare_dateFrom) {
      this.body.compare_dateFrom = this.compare_dateFrom.toLocaleString(
        'en-us'
      );
    } else {
      this.body.compare_dateFrom = new Date().toLocaleString('en-us');
    }
  }

  setBodyDateByLast7Days() {
    const dateFrom = new Date(
      new Date(new Date().setDate(new Date().getDate() - 6)).toLocaleDateString(
        'en-us'
      ) + ',00:00:00'
    );
    const dateTo = new Date();
    const compare_dateFrom = new Date(
      new Date(
        new Date().setDate(new Date().getDate() - 13)
      ).toLocaleDateString('en-us') + ',00:00:00'
    );
    const compare_dateTo = new Date(
      new Date(new Date().setDate(new Date().getDate() - 7)).toLocaleDateString(
        'en-us'
      ) + ',23:59:59'
    );

    this.body.dateFrom = dateFrom.toLocaleString('en-us');
    this.body.dateTo = dateTo.toLocaleString('en-us');
    this.body.compare_dateFrom = compare_dateFrom.toLocaleString('en-us');
    this.body.compare_dateTo = compare_dateTo.toLocaleString('en-us');
  }
}
