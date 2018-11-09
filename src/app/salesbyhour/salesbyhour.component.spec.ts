import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SalesbyhourComponent } from './salesbyhour.component';

describe('SalesbyhourComponent', () => {
  let component: SalesbyhourComponent;
  let fixture: ComponentFixture<SalesbyhourComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SalesbyhourComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SalesbyhourComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
