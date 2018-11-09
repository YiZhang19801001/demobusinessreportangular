import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SalesbydayComponent } from './salesbyday.component';

describe('SalesbydayComponent', () => {
  let component: SalesbydayComponent;
  let fixture: ComponentFixture<SalesbydayComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SalesbydayComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SalesbydayComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
