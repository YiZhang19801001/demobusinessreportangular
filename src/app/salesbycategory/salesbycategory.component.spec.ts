import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SalesbycategoryComponent } from './salesbycategory.component';

describe('SalesbycategoryComponent', () => {
  let component: SalesbycategoryComponent;
  let fixture: ComponentFixture<SalesbycategoryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SalesbycategoryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SalesbycategoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
