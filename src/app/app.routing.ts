import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuard } from './_guards';

import { OverviewComponent } from './overview/overview.component';
import { LoginComponent } from './login/login.component';
import { SummaryComponent } from './summary/summary.component';
import { ReportComponent } from './report/report.component';
import { SalesbycategoryComponent } from './salesbycategory/salesbycategory.component';
import { SalesbyitemComponent } from './salesbyitem/salesbyitem.component';
import { SalesbyhourComponent } from './salesbyhour/salesbyhour.component';
import { SalesbydayComponent } from './salesbyday/salesbyday.component';
import { VoidLogComponent } from './void-log/void-log.component';
import { UnpaidOrderComponent } from './unpaid-order/unpaid-order.component';
import { OverViewSummaryComponent } from './over-view-summary/over-view-summary.component';

const appRoutes: Routes = [
  {
    path: 'report',
    component: ReportComponent,
    canActivate: [AuthGuard],
    runGuardsAndResolvers: 'always',
    children: [
      { path: '', redirectTo: 'summary', pathMatch: 'full' },
      { path: 'summary', component: SummaryComponent },
      { path: 'salesbycategory', component: SalesbycategoryComponent },
      { path: 'salesbyitem', component: SalesbyitemComponent },
      { path: 'salesbyhour', component: SalesbyhourComponent },
      { path: 'salesbyday', component: SalesbydayComponent },
      { path: 'voidlog', component: VoidLogComponent },
      { path: 'unpaidorder', component: UnpaidOrderComponent }
    ]
  },
  {
    path: 'overview',
    component: OverviewComponent,
    runGuardsAndResolvers: 'always',
    children: [
      {
        path: 'summary',
        component: OverViewSummaryComponent,
        canActivate: [AuthGuard]
      }
    ]
  },

  { path: '**', component: LoginComponent }
];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes, {
  onSameUrlNavigation: 'reload'
});
