import { ValueService } from './../_services/value.service';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-loading-cover',
  templateUrl: './loading-cover.component.html',
  styleUrls: ['./loading-cover.component.css']
})
export class LoadingCoverComponent implements OnInit {
  constructor(public _apiService: ValueService, private router: Router) {}

  ngOnInit() {}

  cancelRequest() {
    this.router.navigateByUrl('overview');
    this._apiService.showLoadingCover = false;
  }
}
