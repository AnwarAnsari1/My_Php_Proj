!function(){function t(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function e(t,e){for(var a=0;a<e.length;a++){var o=e[a];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}function a(t,a,o){return a&&e(t.prototype,a),o&&e(t,o),t}(window.webpackJsonp=window.webpackJsonp||[]).push([[18],{UCJ2:function(e,o,n){"use strict";n.r(o),n.d(o,"CollectionsModule",function(){return N});var i=n("ofXK"),r=n("3Pt+"),c=n("tyNb"),s=n("AytR"),b=n("fXoL"),l=n("jhN1"),p=n("OlR4"),u=n("tk/3"),d=n("kmnG"),f=n("iadO"),m=n("bTqV");function h(t,e){if(1&t&&(b.Ub(0,"object",15),b.Ub(1,"p"),b.Jc(2,"Cannot View Report. You can Download report "),b.Ub(3,"a",16),b.Jc(4,"Here"),b.Tb(),b.Tb(),b.Tb()),2&t){var a=b.gc();b.oc("data",a.pdfData,b.Bc),b.Cb(3),b.oc("href",a.pdfUrl,b.Cc)}}var v,y=((v=function(){function e(a,o,n){t(this,e),this.sanitizer=a,this.common=o,this.http=n,this.hasData=!1}return a(e,[{key:"ngOnInit",value:function(){this.common.mainData.next({header:"Overall Collections",treeView:"liReport",subTreeView:"liCollectionsRep",menu:"liCollReport"});var t=new Date;this.currentDate=t,this.dateRange=new r.j({startDate:new r.h(t),endDate:new r.h(t)})}},{key:"format",value:function(t){return Object(i.x)(t,"yyyy-MM-dd","en-IN","IST")}},{key:"getData",value:function(){var t=this;this.hasData=!1;var e=this.format(this.dateRange.get("startDate").value),a=this.format(this.dateRange.get("endDate").value);this.pdfUrl="".concat(s.a.normUrl,"reports/overall-collections/").concat(e,"/").concat(a),this.subscription$=this.http.get(this.pdfUrl+"/yes",{responseType:"text"}).subscribe({next:function(e){t.pdfData=t.sanitizer.bypassSecurityTrustResourceUrl("data:application/pdf;base64,".concat(e)),t.hasData=!0}})}},{key:"ngOnDestroy",value:function(){void 0!==this.subscription$&&this.subscription$.unsubscribe()}}]),e}()).\u0275fac=function(t){return new(t||v)(b.Ob(l.b),b.Ob(p.a),b.Ob(u.b))},v.\u0275cmp=b.Ib({type:v,selectors:[["app-overall-collection-report"]],decls:19,vars:5,consts:[[1,"container","mt-1"],[1,"background-All","p-2"],[1,"row","offset-lg-1"],[1,"col-md-3"],["color","accent","appearance","fill"],[3,"formGroup","rangePicker","max"],["matStartDate","","formControlName","startDate","readonly",""],["matEndDate","","formControlName","endDate","readonly",""],["matSuffix","",3,"for"],["picker",""],[1,"col","mt-2"],["mat-raised-button","","color","primary",3,"click"],[1,"row","mt-1"],[1,"embed-responsive","embed-responsive-16by9","col-12"],["type","application/pdf",3,"data",4,"ngIf"],["type","application/pdf",3,"data"],["download","",3,"href"]],template:function(t,e){if(1&t&&(b.Ub(0,"div",0),b.Ub(1,"div",1),b.Ub(2,"div",2),b.Ub(3,"div",3),b.Ub(4,"mat-form-field",4),b.Ub(5,"mat-label"),b.Jc(6,"Date"),b.Tb(),b.Ub(7,"mat-date-range-input",5),b.Pb(8,"input",6),b.Pb(9,"input",7),b.Tb(),b.Pb(10,"mat-datepicker-toggle",8),b.Pb(11,"mat-date-range-picker",null,9),b.Tb(),b.Tb(),b.Ub(13,"div",10),b.Ub(14,"button",11),b.cc("click",function(){return e.getData()}),b.Jc(15,"Show"),b.Tb(),b.Tb(),b.Tb(),b.Ub(16,"div",12),b.Ub(17,"div",13),b.Hc(18,h,5,2,"object",14),b.Tb(),b.Tb(),b.Tb(),b.Tb()),2&t){var a=b.wc(12);b.Cb(7),b.oc("formGroup",e.dateRange)("rangePicker",a)("max",e.currentDate),b.Cb(3),b.oc("for",a),b.Cb(8),b.oc("ngIf",e.hasData)}},directives:[d.c,d.f,f.a,r.s,r.k,f.h,r.d,r.r,r.i,f.g,f.f,d.g,f.b,m.b,i.n],styles:["div.ui-datepicker[_ngcontent-%COMP%]{font-size:15px}"]}),v),g=n("d3UM"),U=n("FKr1");function T(t,e){if(1&t&&(b.Ub(0,"mat-option",6),b.Jc(1),b.Tb()),2&t){var a=e.$implicit;b.oc("value",a),b.Cb(1),b.Kc(a)}}function D(t,e){if(1&t&&(b.Ub(0,"mat-option",6),b.Jc(1),b.Tb()),2&t){var a=e.$implicit;b.oc("value",a.number),b.Cb(1),b.Kc(a.name)}}function w(t,e){if(1&t&&(b.Ub(0,"object",13),b.Ub(1,"p"),b.Jc(2,"Cannot View Report. You can Download report "),b.Ub(3,"a",14),b.Jc(4,"Here"),b.Tb(),b.Tb(),b.Tb()),2&t){var a=b.gc();b.oc("data",a.pdfData,b.Bc),b.Cb(3),b.oc("href",a.pdfUrl,b.Cc)}}var C,k=((C=function(){function e(a,o,n){t(this,e),this.common=a,this.http=o,this.sanitizer=n,this.hasData=!1}return a(e,[{key:"ngOnInit",value:function(){this.common.mainData.next({header:"Monthly Collections",treeView:"liReport",subTreeView:"liCollectionsRep",menu:"liMonthlyColl"}),this.year=2021,this.month=1,this.years=[],this.months=[];for(var t=new Date,e=t.getMonth(),a=t.getFullYear();a>2021;a--)this.years.push(a);for(var o=1;o<12;o++)t.setMonth(o),this.months.push({number:o+1,name:t.toLocaleString("default",{month:"short"})});this.month=e+1}},{key:"getData",value:function(){var t=this;this.hasData=!1,this.pdfUrl="".concat(s.a.normUrl,"reports/monthly-collections/").concat(this.year,"/").concat(this.month),this.subscription=this.http.get(this.pdfUrl+"/yes",{responseType:"text"}).subscribe({next:function(e){t.pdfData=t.sanitizer.bypassSecurityTrustResourceUrl("data:application/pdf;base64,".concat(e)),t.hasData=!0}})}},{key:"ngOnDestroy",value:function(){void 0!==this.subscription&&this.subscription.unsubscribe()}}]),e}()).\u0275fac=function(t){return new(t||C)(b.Ob(p.a),b.Ob(u.b),b.Ob(l.b))},C.\u0275cmp=b.Ib({type:C,selectors:[["app-monthly-collections"]],decls:25,vars:7,consts:[[1,"container","mt-1"],[1,"background-All","p-2"],[1,"row","offset-lg-1"],[1,"col-md-2"],["color","accent","appearance","fill"],[3,"value","valueChange"],[3,"value"],[3,"value",4,"ngFor","ngForOf"],[1,"col-lg-3","mt-2"],["mat-raised-button","","color","primary",3,"click"],[1,"row","mt-1"],[1,"embed-responsive","embed-responsive-16by9","col-12"],["type","application/pdf",3,"data",4,"ngIf"],["type","application/pdf",3,"data"],["download","",3,"href"]],template:function(t,e){1&t&&(b.Ub(0,"div",0),b.Ub(1,"div",1),b.Ub(2,"div",2),b.Ub(3,"div",3),b.Ub(4,"mat-form-field",4),b.Ub(5,"mat-label"),b.Jc(6,"Year"),b.Tb(),b.Ub(7,"mat-select",5),b.cc("valueChange",function(t){return e.year=t}),b.Ub(8,"mat-option",6),b.Jc(9,"2021"),b.Tb(),b.Hc(10,T,2,2,"mat-option",7),b.Tb(),b.Tb(),b.Tb(),b.Ub(11,"div",3),b.Ub(12,"mat-form-field",4),b.Ub(13,"mat-label"),b.Jc(14,"Month"),b.Tb(),b.Ub(15,"mat-select",5),b.cc("valueChange",function(t){return e.month=t}),b.Ub(16,"mat-option",6),b.Jc(17,"Jan"),b.Tb(),b.Hc(18,D,2,2,"mat-option",7),b.Tb(),b.Tb(),b.Tb(),b.Ub(19,"div",8),b.Ub(20,"button",9),b.cc("click",function(){return e.getData()}),b.Jc(21,"Show"),b.Tb(),b.Tb(),b.Tb(),b.Ub(22,"div",10),b.Ub(23,"div",11),b.Hc(24,w,5,2,"object",12),b.Tb(),b.Tb(),b.Tb(),b.Tb()),2&t&&(b.Cb(7),b.oc("value",e.year),b.Cb(1),b.oc("value",2021),b.Cb(2),b.oc("ngForOf",e.years),b.Cb(5),b.oc("value",e.month),b.Cb(1),b.oc("value",1),b.Cb(2),b.oc("ngForOf",e.months),b.Cb(6),b.oc("ngIf",e.hasData))},directives:[d.c,d.f,g.a,U.j,i.m,m.b,i.n],styles:[""]}),C),O=n("XNiG"),R=n("1G5W"),J=n("5eHb");function x(t,e){if(1&t&&(b.Ub(0,"mat-option",20),b.Jc(1),b.Tb()),2&t){var a=e.$implicit;b.oc("value",a.id),b.Cb(1),b.Kc(a.id+" - "+a.name)}}function j(t,e){if(1&t&&(b.Ub(0,"object",21),b.Ub(1,"p"),b.Jc(2,"Cannot View Report. You can Download report "),b.Ub(3,"a",22),b.Jc(4,"Here"),b.Tb(),b.Tb(),b.Tb()),2&t){var a=b.gc();b.oc("data",a.pdfData,b.Bc),b.Cb(3),b.oc("href",a.pdfUrl,b.Cc)}}var I,M,P,S=[{path:"overall",component:y},{path:"monthly",component:k},{path:"doctorwise",component:(I=function(){function e(a,o,n,i){t(this,e),this.common=a,this.http=o,this.toastr=n,this.sanitizer=i,this.hasData=!1,this.pdfData=""}return a(e,[{key:"ngOnInit",value:function(){var t=this;this.common.mainData.next({header:"Doctorwise Collections",treeView:"liReport",subTreeView:"liCollectionsRep",menu:"liDoctorwiseColl"}),this.docsurl=s.a.normUrl+"reports/doctors",this.cons=[],this.consultant=this.mobileUrl="",this.hasData=this.submitted=!1,this.currentDate=this.startDate=this.endDate=new Date,this.destroy$=new O.a,this.http.get(this.docsurl).pipe(Object(R.a)(this.destroy$)).subscribe({next:function(e){t.doctor=e,t.cons.push(t.doctor),console.log(t.doctor)}});var e=new Date;this.currentDate=e,this.dateRange=new r.j({type:new r.h(""),startDate:new r.h(e),endDate:new r.h(e)})}},{key:"ConvertDateFormat",value:function(t){return Object(i.x)(t,"yyyy-MM-dd","en-IN","IST")}},{key:"getData",value:function(){var t=this;this.hasData=!1;var e=this.dateRange.get("type").value,a=this.format(this.dateRange.get("startDate").value),o=this.format(this.dateRange.get("endDate").value);this.pdfUrl="".concat(s.a.normUrl,"reports/doctorwise-collections/").concat(e,"/").concat(a,"/").concat(o),this.subscription$=this.http.get(this.pdfUrl+"/yes",{responseType:"text"}).subscribe({next:function(e){t.pdfData=t.sanitizer.bypassSecurityTrustResourceUrl("data:application/pdf;base64,".concat(e)),t.hasData=!0}})}},{key:"format",value:function(t){return Object(i.x)(t,"yyyy-MM-dd","en-IN","IST")}}]),e}(),I.\u0275fac=function(t){return new(t||I)(b.Ob(p.a),b.Ob(u.b),b.Ob(J.b),b.Ob(l.b))},I.\u0275cmp=b.Ib({type:I,selectors:[["app-doctorwise-collection"]],decls:27,vars:7,consts:[[3,"formGroup"],["form","ngForm"],[1,"container","mt-1"],[1,"background-All","p-2"],[1,"row","offset-lg-1"],[1,"col-md-3"],["color","accent","appearance","fill"],[3,"formGroup","rangePicker","max"],["matStartDate","","formControlName","startDate","readonly",""],["matEndDate","","formControlName","endDate","readonly",""],["matSuffix","",3,"for"],["picker",""],[1,"col-md-2"],["formControlName","type"],[3,"value",4,"ngFor","ngForOf"],[1,"col-lg-3","mt-2"],["mat-raised-button","","color","primary",3,"click"],[1,"row","mt-1"],[1,"embed-responsive","embed-responsive-16by9","col-12"],["type","application/pdf",3,"data",4,"ngIf"],[3,"value"],["type","application/pdf",3,"data"],["download","",3,"href"]],template:function(t,e){if(1&t&&(b.Ub(0,"form",0,1),b.Ub(2,"div",2),b.Ub(3,"div",3),b.Ub(4,"div",4),b.Ub(5,"div",5),b.Ub(6,"mat-form-field",6),b.Ub(7,"mat-label"),b.Jc(8,"Date"),b.Tb(),b.Ub(9,"mat-date-range-input",7),b.Pb(10,"input",8),b.Pb(11,"input",9),b.Tb(),b.Pb(12,"mat-datepicker-toggle",10),b.Pb(13,"mat-date-range-picker",null,11),b.Tb(),b.Tb(),b.Ub(15,"div",12),b.Ub(16,"mat-form-field",6),b.Ub(17,"mat-label"),b.Jc(18,"Select Consultant"),b.Tb(),b.Ub(19,"mat-select",13),b.Hc(20,x,2,2,"mat-option",14),b.Tb(),b.Tb(),b.Tb(),b.Ub(21,"div",15),b.Ub(22,"button",16),b.cc("click",function(){return e.getData()}),b.Jc(23,"Show"),b.Tb(),b.Tb(),b.Tb(),b.Ub(24,"div",17),b.Ub(25,"div",18),b.Hc(26,j,5,2,"object",19),b.Tb(),b.Tb(),b.Tb(),b.Tb(),b.Tb()),2&t){var a=b.wc(14);b.oc("formGroup",e.dateRange),b.Cb(9),b.oc("formGroup",e.dateRange)("rangePicker",a)("max",e.currentDate),b.Cb(3),b.oc("for",a),b.Cb(8),b.oc("ngForOf",e.doctor),b.Cb(6),b.oc("ngIf",e.hasData)}},directives:[r.A,r.s,r.k,d.c,d.f,f.a,f.h,r.d,r.r,r.i,f.g,f.f,d.g,f.b,g.a,i.m,m.b,i.n,U.j],styles:[""]}),I)}],F=((M=function e(){t(this,e)}).\u0275fac=function(t){return new(t||M)},M.\u0275mod=b.Mb({type:M}),M.\u0275inj=b.Lb({imports:[[c.h.forChild(S)],c.h]}),M),G=n("qFsG"),N=((P=function e(){t(this,e)}).\u0275fac=function(t){return new(t||P)},P.\u0275mod=b.Mb({type:P}),P.\u0275inj=b.Lb({providers:[{provide:U.d,useValue:"en-GB"}],imports:[[i.c,r.x,F,d.e,G.c,g.b,f.e,U.i,m.c]]}),P)}}])}();