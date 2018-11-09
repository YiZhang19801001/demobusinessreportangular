import { Component, OnInit, OnDestroy } from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';

@Component({
  selector: 'app-salesbyhour',
  templateUrl: './salesbyhour.component.html',
  styleUrls: ['./salesbyhour.component.css']
})
export class SalesbyhourComponent implements OnInit, OnDestroy {
  navigationSubscription;
  constructor(private _router: Router) {}

  ngOnInit() {
    this.navigationSubscription = this._router.events.subscribe((e: any) => {
      // If it is a NavigationEnd event re-initalise the component
      if (e instanceof NavigationEnd) {
      }
    });
  }
  ngOnDestroy() {
    // avoid memory leaks here by cleaning up after ourselves. If we
    // don't then we will continue to run our initialiseInvites()
    // method on every navigationEnd event.
    if (this.navigationSubscription) {
      this.navigationSubscription.unsubscribe();
    }
  }
}
