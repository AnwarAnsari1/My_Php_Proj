import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { OverAllReportComponent } from '../../../components/reports/collections/collection-report/overall.component';
// import { DeptwiseComponent } from '../../../Components/Reports/collections/deptwise/deptwise.component';
import { MonthlyCollectionsComponent } from '../../../components/reports/collections/monthly-collections/monthly-collections.component';
import { DoctorwiseCollectionComponent } from 'src/app/components/reports/collections/doctorwise-collection/doctorwise-collection.component';
const routes: Routes = [
  {
    path: 'overall',
    component: OverAllReportComponent
  },
  {
    path: 'monthly',
    component: MonthlyCollectionsComponent
  },
  {
    path: 'doctorwise',
    component: DoctorwiseCollectionComponent
  }
  // {
  //   path: 'deptwise',
  //   component: DeptwiseComponent
  // }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class CollectionsRoutingModule { }
