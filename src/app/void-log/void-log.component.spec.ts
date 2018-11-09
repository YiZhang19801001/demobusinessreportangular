import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VoidLogComponent } from './void-log.component';

describe('VoidLogComponent', () => {
  let component: VoidLogComponent;
  let fixture: ComponentFixture<VoidLogComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VoidLogComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VoidLogComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
