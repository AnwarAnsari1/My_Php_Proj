(window.webpackJsonp=window.webpackJsonp||[]).push([[18],{UCJ2:function(t,e,a){"use strict";a.r(e),a.d(e,"CollectionsModule",function(){return x});var o=a("ofXK"),n=a("3Pt+"),i=a("tyNb"),r=a("AytR"),c=a("fXoL"),s=a("jhN1"),b=a("OlR4"),l=a("tk/3"),p=a("kmnG"),d=a("iadO"),h=a("bTqV");function m(t,e){if(1&t&&(c.Ub(0,"object",15),c.Ub(1,"p"),c.Jc(2,"Cannot View Report. You can Download report "),c.Ub(3,"a",16),c.Jc(4,"Here"),c.Tb(),c.Tb(),c.Tb()),2&t){const t=c.gc();c.oc("data",t.pdfData,c.Bc),c.Cb(3),c.oc("href",t.pdfUrl,c.Cc)}}let u=(()=>{class t{constructor(t,e,a){this.sanitizer=t,this.common=e,this.http=a,this.hasData=!1}ngOnInit(){this.common.mainData.next({header:"Overall Collections",treeView:"liReport",subTreeView:"liCollectionsRep",menu:"liCollReport"});const t=new Date;this.currentDate=t,this.dateRange=new n.j({startDate:new n.h(t),endDate:new n.h(t)})}format(t){return Object(o.x)(t,"yyyy-MM-dd","en-IN","IST")}getData(){this.hasData=!1;const t=this.format(this.dateRange.get("startDate").value),e=this.format(this.dateRange.get("endDate").value);this.pdfUrl=`${r.a.normUrl}reports/overall-collections/${t}/${e}`,this.subscription$=this.http.get(this.pdfUrl+"/yes",{responseType:"text"}).subscribe({next:t=>{this.pdfData=this.sanitizer.bypassSecurityTrustResourceUrl(`data:application/pdf;base64,${t}`),this.hasData=!0}})}ngOnDestroy(){void 0!==this.subscription$&&this.subscription$.unsubscribe()}}return t.\u0275fac=function(e){return new(e||t)(c.Ob(s.b),c.Ob(b.a),c.Ob(l.b))},t.\u0275cmp=c.Ib({type:t,selectors:[["app-overall-collection-report"]],decls:19,vars:5,consts:[[1,"container","mt-1"],[1,"background-All","p-2"],[1,"row","offset-lg-1"],[1,"col-md-3"],["color","accent","appearance","fill"],[3,"formGroup","rangePicker","max"],["matStartDate","","formControlName","startDate","readonly",""],["matEndDate","","formControlName","endDate","readonly",""],["matSuffix","",3,"for"],["picker",""],[1,"col","mt-2"],["mat-raised-button","","color","primary",3,"click"],[1,"row","mt-1"],[1,"embed-responsive","embed-responsive-16by9","col-12"],["type","application/pdf",3,"data",4,"ngIf"],["type","application/pdf",3,"data"],["download","",3,"href"]],template:function(t,e){if(1&t&&(c.Ub(0,"div",0),c.Ub(1,"div",1),c.Ub(2,"div",2),c.Ub(3,"div",3),c.Ub(4,"mat-form-field",4),c.Ub(5,"mat-label"),c.Jc(6,"Date"),c.Tb(),c.Ub(7,"mat-date-range-input",5),c.Pb(8,"input",6),c.Pb(9,"input",7),c.Tb(),c.Pb(10,"mat-datepicker-toggle",8),c.Pb(11,"mat-date-range-picker",null,9),c.Tb(),c.Tb(),c.Ub(13,"div",10),c.Ub(14,"button",11),c.cc("click",function(){return e.getData()}),c.Jc(15,"Show"),c.Tb(),c.Tb(),c.Tb(),c.Ub(16,"div",12),c.Ub(17,"div",13),c.Hc(18,m,5,2,"object",14),c.Tb(),c.Tb(),c.Tb(),c.Tb()),2&t){const t=c.wc(12);c.Cb(7),c.oc("formGroup",e.dateRange)("rangePicker",t)("max",e.currentDate),c.Cb(3),c.oc("for",t),c.Cb(8),c.oc("ngIf",e.hasData)}},directives:[p.c,p.f,d.a,n.s,n.k,d.h,n.d,n.r,n.i,d.g,d.f,p.g,d.b,h.b,o.n],styles:["div.ui-datepicker[_ngcontent-%COMP%]{font-size:15px}"]}),t})();var f=a("d3UM"),g=a("FKr1");function U(t,e){if(1&t&&(c.Ub(0,"mat-option",6),c.Jc(1),c.Tb()),2&t){const t=e.$implicit;c.oc("value",t),c.Cb(1),c.Kc(t)}}function v(t,e){if(1&t&&(c.Ub(0,"mat-option",6),c.Jc(1),c.Tb()),2&t){const t=e.$implicit;c.oc("value",t.number),c.Cb(1),c.Kc(t.name)}}function y(t,e){if(1&t&&(c.Ub(0,"object",13),c.Ub(1,"p"),c.Jc(2,"Cannot View Report. You can Download report "),c.Ub(3,"a",14),c.Jc(4,"Here"),c.Tb(),c.Tb(),c.Tb()),2&t){const t=c.gc();c.oc("data",t.pdfData,c.Bc),c.Cb(3),c.oc("href",t.pdfUrl,c.Cc)}}let T=(()=>{class t{constructor(t,e,a){this.common=t,this.http=e,this.sanitizer=a,this.hasData=!1}ngOnInit(){this.common.mainData.next({header:"Monthly Collections",treeView:"liReport",subTreeView:"liCollectionsRep",menu:"liMonthlyColl"}),this.year=2021,this.month=1,this.years=[],this.months=[];const t=new Date,e=t.getMonth();for(let a=t.getFullYear();a>2021;a--)this.years.push(a);for(let a=1;a<12;a++)t.setMonth(a),this.months.push({number:a+1,name:t.toLocaleString("default",{month:"short"})});this.month=e+1}getData(){this.hasData=!1,this.pdfUrl=`${r.a.normUrl}reports/monthly-collections/${this.year}/${this.month}`,this.subscription=this.http.get(this.pdfUrl+"/yes",{responseType:"text"}).subscribe({next:t=>{this.pdfData=this.sanitizer.bypassSecurityTrustResourceUrl(`data:application/pdf;base64,${t}`),this.hasData=!0}})}ngOnDestroy(){void 0!==this.subscription&&this.subscription.unsubscribe()}}return t.\u0275fac=function(e){return new(e||t)(c.Ob(b.a),c.Ob(l.b),c.Ob(s.b))},t.\u0275cmp=c.Ib({type:t,selectors:[["app-monthly-collections"]],decls:25,vars:7,consts:[[1,"container","mt-1"],[1,"background-All","p-2"],[1,"row","offset-lg-1"],[1,"col-md-2"],["color","accent","appearance","fill"],[3,"value","valueChange"],[3,"value"],[3,"value",4,"ngFor","ngForOf"],[1,"col-lg-3","mt-2"],["mat-raised-button","","color","primary",3,"click"],[1,"row","mt-1"],[1,"embed-responsive","embed-responsive-16by9","col-12"],["type","application/pdf",3,"data",4,"ngIf"],["type","application/pdf",3,"data"],["download","",3,"href"]],template:function(t,e){1&t&&(c.Ub(0,"div",0),c.Ub(1,"div",1),c.Ub(2,"div",2),c.Ub(3,"div",3),c.Ub(4,"mat-form-field",4),c.Ub(5,"mat-label"),c.Jc(6,"Year"),c.Tb(),c.Ub(7,"mat-select",5),c.cc("valueChange",function(t){return e.year=t}),c.Ub(8,"mat-option",6),c.Jc(9,"2021"),c.Tb(),c.Hc(10,U,2,2,"mat-option",7),c.Tb(),c.Tb(),c.Tb(),c.Ub(11,"div",3),c.Ub(12,"mat-form-field",4),c.Ub(13,"mat-label"),c.Jc(14,"Month"),c.Tb(),c.Ub(15,"mat-select",5),c.cc("valueChange",function(t){return e.month=t}),c.Ub(16,"mat-option",6),c.Jc(17,"Jan"),c.Tb(),c.Hc(18,v,2,2,"mat-option",7),c.Tb(),c.Tb(),c.Tb(),c.Ub(19,"div",8),c.Ub(20,"button",9),c.cc("click",function(){return e.getData()}),c.Jc(21,"Show"),c.Tb(),c.Tb(),c.Tb(),c.Ub(22,"div",10),c.Ub(23,"div",11),c.Hc(24,y,5,2,"object",12),c.Tb(),c.Tb(),c.Tb(),c.Tb()),2&t&&(c.Cb(7),c.oc("value",e.year),c.Cb(1),c.oc("value",2021),c.Cb(2),c.oc("ngForOf",e.years),c.Cb(5),c.oc("value",e.month),c.Cb(1),c.oc("value",1),c.Cb(2),c.oc("ngForOf",e.months),c.Cb(6),c.oc("ngIf",e.hasData))},directives:[p.c,p.f,f.a,g.j,o.m,h.b,o.n],styles:[""]}),t})();var D=a("XNiG"),w=a("1G5W"),C=a("5eHb");function O(t,e){if(1&t&&(c.Ub(0,"mat-option",20),c.Jc(1),c.Tb()),2&t){const t=e.$implicit;c.oc("value",t.id),c.Cb(1),c.Kc(t.id+" - "+t.name)}}function k(t,e){if(1&t&&(c.Ub(0,"object",21),c.Ub(1,"p"),c.Jc(2,"Cannot View Report. You can Download report "),c.Ub(3,"a",22),c.Jc(4,"Here"),c.Tb(),c.Tb(),c.Tb()),2&t){const t=c.gc();c.oc("data",t.pdfData,c.Bc),c.Cb(3),c.oc("href",t.pdfUrl,c.Cc)}}const R=[{path:"overall",component:u},{path:"monthly",component:T},{path:"doctorwise",component:(()=>{class t{constructor(t,e,a,o){this.common=t,this.http=e,this.toastr=a,this.sanitizer=o,this.hasData=!1,this.pdfData=""}ngOnInit(){this.common.mainData.next({header:"Doctorwise Collections",treeView:"liReport",subTreeView:"liCollectionsRep",menu:"liDoctorwiseColl"}),this.docsurl=r.a.normUrl+"reports/doctors",this.cons=[],this.consultant=this.mobileUrl="",this.hasData=this.submitted=!1,this.currentDate=this.startDate=this.endDate=new Date,this.destroy$=new D.a,this.http.get(this.docsurl).pipe(Object(w.a)(this.destroy$)).subscribe({next:t=>{this.doctor=t,this.cons.push(this.doctor),console.log(this.doctor)}});const t=new Date;this.currentDate=t,this.dateRange=new n.j({type:new n.h(""),startDate:new n.h(t),endDate:new n.h(t)})}ConvertDateFormat(t){return Object(o.x)(t,"yyyy-MM-dd","en-IN","IST")}getData(){this.hasData=!1;const t=this.dateRange.get("type").value,e=this.format(this.dateRange.get("startDate").value),a=this.format(this.dateRange.get("endDate").value);this.pdfUrl=`${r.a.normUrl}reports/doctorwise-collections/${t}/${e}/${a}`,this.subscription$=this.http.get(this.pdfUrl+"/yes",{responseType:"text"}).subscribe({next:t=>{this.pdfData=this.sanitizer.bypassSecurityTrustResourceUrl(`data:application/pdf;base64,${t}`),this.hasData=!0}})}format(t){return Object(o.x)(t,"yyyy-MM-dd","en-IN","IST")}}return t.\u0275fac=function(e){return new(e||t)(c.Ob(b.a),c.Ob(l.b),c.Ob(C.b),c.Ob(s.b))},t.\u0275cmp=c.Ib({type:t,selectors:[["app-doctorwise-collection"]],decls:27,vars:7,consts:[[3,"formGroup"],["form","ngForm"],[1,"container","mt-1"],[1,"background-All","p-2"],[1,"row","offset-lg-1"],[1,"col-md-3"],["color","accent","appearance","fill"],[3,"formGroup","rangePicker","max"],["matStartDate","","formControlName","startDate","readonly",""],["matEndDate","","formControlName","endDate","readonly",""],["matSuffix","",3,"for"],["picker",""],[1,"col-md-2"],["formControlName","type"],[3,"value",4,"ngFor","ngForOf"],[1,"col-lg-3","mt-2"],["mat-raised-button","","color","primary",3,"click"],[1,"row","mt-1"],[1,"embed-responsive","embed-responsive-16by9","col-12"],["type","application/pdf",3,"data",4,"ngIf"],[3,"value"],["type","application/pdf",3,"data"],["download","",3,"href"]],template:function(t,e){if(1&t&&(c.Ub(0,"form",0,1),c.Ub(2,"div",2),c.Ub(3,"div",3),c.Ub(4,"div",4),c.Ub(5,"div",5),c.Ub(6,"mat-form-field",6),c.Ub(7,"mat-label"),c.Jc(8,"Date"),c.Tb(),c.Ub(9,"mat-date-range-input",7),c.Pb(10,"input",8),c.Pb(11,"input",9),c.Tb(),c.Pb(12,"mat-datepicker-toggle",10),c.Pb(13,"mat-date-range-picker",null,11),c.Tb(),c.Tb(),c.Ub(15,"div",12),c.Ub(16,"mat-form-field",6),c.Ub(17,"mat-label"),c.Jc(18,"Select Consultant"),c.Tb(),c.Ub(19,"mat-select",13),c.Hc(20,O,2,2,"mat-option",14),c.Tb(),c.Tb(),c.Tb(),c.Ub(21,"div",15),c.Ub(22,"button",16),c.cc("click",function(){return e.getData()}),c.Jc(23,"Show"),c.Tb(),c.Tb(),c.Tb(),c.Ub(24,"div",17),c.Ub(25,"div",18),c.Hc(26,k,5,2,"object",19),c.Tb(),c.Tb(),c.Tb(),c.Tb(),c.Tb()),2&t){const t=c.wc(14);c.oc("formGroup",e.dateRange),c.Cb(9),c.oc("formGroup",e.dateRange)("rangePicker",t)("max",e.currentDate),c.Cb(3),c.oc("for",t),c.Cb(8),c.oc("ngForOf",e.doctor),c.Cb(6),c.oc("ngIf",e.hasData)}},directives:[n.A,n.s,n.k,p.c,p.f,d.a,d.h,n.d,n.r,n.i,d.g,d.f,p.g,d.b,f.a,o.m,h.b,o.n,g.j],styles:[""]}),t})()}];let J=(()=>{class t{}return t.\u0275fac=function(e){return new(e||t)},t.\u0275mod=c.Mb({type:t}),t.\u0275inj=c.Lb({imports:[[i.h.forChild(R)],i.h]}),t})();var $=a("qFsG");let x=(()=>{class t{}return t.\u0275fac=function(e){return new(e||t)},t.\u0275mod=c.Mb({type:t}),t.\u0275inj=c.Lb({providers:[{provide:g.d,useValue:"en-GB"}],imports:[[o.c,n.x,J,p.e,$.c,f.b,d.e,g.i,h.c]]}),t})()}}]);