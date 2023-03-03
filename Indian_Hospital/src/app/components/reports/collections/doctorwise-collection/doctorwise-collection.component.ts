import { Component, OnInit } from '@angular/core';
import { Inputs } from 'src/app/components/masters/doctor-timings/doctor-timing-model';
import { CommonService } from 'src/app/services/common.service';
import { SafeResourceUrl, DomSanitizer } from '@angular/platform-browser';
import { environment } from 'src/environments/environment';
import { formatDate } from '@angular/common';
import { FormGroup, FormControl } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { Subscription } from 'rxjs';
// import { FormsModule } from '@angular/forms';


//import { FormsModule } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
@Component({
  selector: 'app-doctorwise-collection',
  templateUrl: './doctorwise-collection.component.html',
  styleUrls: ['./doctorwise-collection.component.scss']
})
export class DoctorwiseCollectionComponent implements OnInit {
  subscription$: Subscription;
  consultant: string;
  dateRange: FormGroup;
  currentDate: Date;
  cons: Array<Consultant>;
  inputs: Inputs;
  mobileUrl: string;
  pdfUrl: string;
  startDate: Date;
  destroy$: Subject<void>;
  endDate: Date;
  submitted: boolean;
  hasData: boolean = false;
  pdfData: SafeResourceUrl = '';
  docsurl :string;
  doctor : any;
  consss:any;
  details:any;
  doctname: FormGroup;
  constructor(private common: CommonService,
    private http: HttpClient,
    private toastr: ToastrService,
    private sanitizer: DomSanitizer) { }

  ngOnInit(): void {
    this.common.mainData.next({ header: 'Doctorwise Collections', treeView: 'liReport', subTreeView: 'liCollectionsRep', menu: 'liDoctorwiseColl' });
    //this.doctor = [];
    this.docsurl = environment.normUrl+'reports/doctors';
    this.cons = [];
    this.consultant = this.mobileUrl = '';
    this.hasData = this.submitted = false;
    this.currentDate = this.startDate = this.endDate = new Date;
    this.destroy$ = new Subject<void>();
        
    this.http.get<Response>(this.docsurl)
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: response => {
        this.doctor = response;
          this.cons.push(this.doctor);
          console.log(this.doctor);
          // this.token = response.token;
        }
      });

      const date = new Date;
    this.currentDate = date;
    this.dateRange = new FormGroup({
      type : new FormControl(''),
      startDate: new FormControl(date),
      endDate: new FormControl(date)
    });

  }

  private ConvertDateFormat(value: Date): string {
    return formatDate(value, 'yyyy-MM-dd', 'en-IN', 'IST');
  }
  
  // getDoctorData() {
  //   // console.log(this.consultant);
  //   // if (this.consultant === '')
  //     // this.toastr.error('Select the Doctor Name');
  //   // else {
  //     this.submitted = true;
  //     this.hasData = false;
  //     this.mobileUrl = `${environment.normUrl}doctorwise-collections/get?consultant=${this.doctor}&start=${this.ConvertDateFormat(this.startDate)}&end=${this.ConvertDateFormat(this.endDate)}`;
  //     this.http.get(this.mobileUrl, { responseType: 'text', params: { base: 'base' } }).toPromise()
  //       .then(d => {
  //         this.pdfData = this.sanitizer.bypassSecurityTrustResourceUrl('data:application/pdf;base64,' + d);
  //         // console.log(this.pdfData);
  //       })
  //       .finally(() => {
  //         this.submitted = false;
  //         this.hasData = true;
  //       });
  //   // }
  // }
  

  getData(): void {
    this.hasData = false;
    const type = this.dateRange.get('type').value;
    const startDate = this.format(this.dateRange.get('startDate').value);
    const endDate = this.format(this.dateRange.get('endDate').value);
    this.pdfUrl = `${environment.normUrl}reports/doctorwise-collections/${type}/${startDate}/${endDate}`;
    this.subscription$ = this.http.get(this.pdfUrl + '/yes', { responseType: 'text' })
      .subscribe({
        next: (response) => {
          this.pdfData = this.sanitizer.bypassSecurityTrustResourceUrl(`data:application/pdf;base64,${response}`);
          this.hasData = true;
        }
      });
  }


  format(date: Date): string {
    return formatDate(date, 'yyyy-MM-dd', 'en-IN', 'IST');
  }

}
interface Consultant {
  number: number,
  name: string,
  id:number
}
interface Response {
  cons: Array<Consultant>,
  name:string,
  id:number,
  token: string
}