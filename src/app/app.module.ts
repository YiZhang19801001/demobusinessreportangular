import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { MaterialMoudule } from './material';
import { HttpModule } from '@angular/http';
import { routing } from './app.routing';
import { FormsModule } from '@angular/forms';
import {
  SocialLoginModule,
  AuthServiceConfig,
  GoogleLoginProvider,
  FacebookLoginProvider
} from 'angular-6-social-login';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { AuthGuard } from './_guards';

import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { SummaryComponent } from './summary/summary.component';
import { OverviewComponent } from './overview/overview.component';

import { AlertService, AuthenticationService } from './_services';
import { JwtInterceptor } from './_helpers/jwt.interceptor';
import { ReportComponent } from './report/report.component';
import { SalesbycategoryComponent } from './salesbycategory/salesbycategory.component';
import { SalesbyitemComponent } from './salesbyitem/salesbyitem.component';
import { SalesbyhourComponent } from './salesbyhour/salesbyhour.component';
import { SalesbydayComponent } from './salesbyday/salesbyday.component';
import { VoidLogComponent } from './void-log/void-log.component';
import { UnpaidOrderComponent } from './unpaid-order/unpaid-order.component';
import { OverViewSummaryComponent } from './over-view-summary/over-view-summary.component';
import { CalendarComponent } from './calendar/calendar.component';

// Configs
export function getAuthServiceConfigs() {
  const config = new AuthServiceConfig([
    {
      id: FacebookLoginProvider.PROVIDER_ID,
      provider: new FacebookLoginProvider('Your-Facebook-app-id')
    },
    {
      id: GoogleLoginProvider.PROVIDER_ID,
      provider: new GoogleLoginProvider(
        '497174760768-uj3rmfpnf6l1sd17koikfb3qs0eiqe56.apps.googleusercontent.com'
      )
    }
  ]);
  return config;
}

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    SummaryComponent,
    OverviewComponent,
    ReportComponent,
    SalesbycategoryComponent,
    SalesbyitemComponent,
    SalesbyhourComponent,
    SalesbydayComponent,
    VoidLogComponent,
    UnpaidOrderComponent,
    OverViewSummaryComponent,
    CalendarComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    routing,
    FormsModule,
    SocialLoginModule,
    BrowserAnimationsModule,
    MaterialMoudule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [
    AlertService,
    AuthGuard,
    { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
    { provide: AuthServiceConfig, useFactory: getAuthServiceConfigs },
    AuthenticationService
  ],
  bootstrap: [AppComponent]
})
export class AppModule {}
