import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';

export class SearchCondition {
  shopId: string;
  dateFrom: string;
  dateTo: string;
}

@Injectable({
  providedIn: 'root'
})
export class ValueService {
  apiUrl = 'http://192.168.20.101:5000/value/';

  dataPickerIsShow = false;
  dateFrom: Date;
  dateTo: Date;
  arr_date: Date[];
  body: SearchCondition = new SearchCondition();

  shop_id: string;

  constructor(private _http: HttpClient) {}

  getShops() {
    return this._http.get(this.apiUrl + 'getshops');
  }

  getSummary() {
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
    console.log(this.shop_id);
    this.body.shopId = this.shop_id || '6';
    const options = { year: 'numeric', month: 'numeric', day: 'numeric' };
    switch (flag) {
      case 1:
      case 2:
        if (this.dateFrom) {
          this.body.dateFrom = this.dateFrom.toLocaleDateString(
            'en-us',
            options
          );
        } else {
          this.body.dateFrom = new Date().toLocaleDateString('en-us', options);
        }

        if (this.dateTo) {
          this.body.dateTo = this.dateTo.toLocaleDateString('en-us', options);
        } else {
          this.body.dateTo = new Date().toLocaleDateString('en-us', options);
        }
        break;
      case 3:
        if (this.dateFrom) {
          this.body.dateFrom = this.dateFrom.toLocaleTimeString();
        } else {
          this.body.dateFrom = '00:00:00';
        }

        if (this.dateTo) {
          this.body.dateTo = this.dateTo.toLocaleTimeString();
        } else {
          this.body.dateTo = '12:00:00';
        }
        break;
      default:
        break;
    }
  }
}
