import { ValueService } from './../_services/value.service';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from '../_services/authentication.service';

@Component({
  selector: 'app-logout-modal',
  templateUrl: './logout-modal.component.html',
  styleUrls: ['./logout-modal.component.css']
})
export class LogoutModalComponent implements OnInit {
  constructor(
    private _auth: AuthenticationService,
    private _router: Router,
    public _apiService: ValueService
  ) {}

  ngOnInit() {}

  cancelLogout() {
    this._apiService.showLogout = false;
  }
  logout() {
    this._auth.logout();
    this._apiService.showLogout = false;
    this._router.navigateByUrl('login');
  }
}
