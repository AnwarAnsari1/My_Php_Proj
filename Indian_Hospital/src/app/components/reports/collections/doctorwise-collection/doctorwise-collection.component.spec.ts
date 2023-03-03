import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DoctorwiseCollectionComponent } from './doctorwise-collection.component';

describe('DoctorwiseCollectionComponent', () => {
  let component: DoctorwiseCollectionComponent;
  let fixture: ComponentFixture<DoctorwiseCollectionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DoctorwiseCollectionComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DoctorwiseCollectionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
