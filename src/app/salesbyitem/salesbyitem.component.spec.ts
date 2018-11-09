import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SalesbyitemComponent } from './salesbyitem.component';

describe('SalesbyitemComponent', () => {
  let component: SalesbyitemComponent;
  let fixture: ComponentFixture<SalesbyitemComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SalesbyitemComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SalesbyitemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
