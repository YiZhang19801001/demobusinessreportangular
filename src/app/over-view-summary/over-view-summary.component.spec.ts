import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { OverViewSummaryComponent } from './over-view-summary.component';

describe('OverViewSummaryComponent', () => {
  let component: OverViewSummaryComponent;
  let fixture: ComponentFixture<OverViewSummaryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OverViewSummaryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(OverViewSummaryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
