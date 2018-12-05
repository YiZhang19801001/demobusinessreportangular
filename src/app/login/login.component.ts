import { Component, OnInit, OnDestroy } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { AlertService, AuthenticationService } from '../_services';
// import {
//   AuthService,
//   FacebookLoginProvider,
//   GoogleLoginProvider
// } from 'angular-6-social-login';

@Component({
  selector: 'app-login',
  templateUrl: 'login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit, OnDestroy {
  loginForm: FormGroup;
  loading = false;
  submitted = false;
  returnUrl: string;

  authSubscribe;

  constructor(
    private formBuilder: FormBuilder,
    private router: Router,
    private authenticationService: AuthenticationService,
    private alertService: AlertService
  ) {}

  ngOnDestroy() {
    if (this.authSubscribe) {
      this.authSubscribe.unsubscribe();
    }
  }
  ngOnInit() {
    this.loginForm = this.formBuilder.group({
      username: ['', Validators.required],
      password: ['', Validators.required]
    });
  }

  // convenience getter for easy access to form fields
  get f() {
    return this.loginForm.controls;
  }

  onSubmit() {
    this.submitted = true;

    // stop here if form is invalid
    if (this.loginForm.invalid) {
      return;
    }

    this.loading = true;

    this.authSubscribe = this.authenticationService
      .login(this.f.username.value, this.f.password.value)
      .subscribe(
        data => {
          localStorage.setItem('current_token', JSON.stringify(data['token']));
          this.router.navigateByUrl('overview');
        },
        error => {
          alert(
            'Login Failed! Check your username and password, or contact us!'
          );
          this.alertService.error(error);
          this.loading = false;
        }
      );
  }

  // public socialSignIn(socialPlatform: string) {
  //   let socialPlatformProvider;
  //   if (socialPlatform === 'facebook') {
  //     socialPlatformProvider = FacebookLoginProvider.PROVIDER_ID;
  //   } else if (socialPlatform === 'google') {
  //     socialPlatformProvider = GoogleLoginProvider.PROVIDER_ID;
  //   }

  //   this.socialAuthService.signIn(socialPlatformProvider).then(userData => {
  //
  //     // Now sign-in with userData
  //     alert('hello! ' + userData.name);
  //     // ...
  //   });
  // }
}
