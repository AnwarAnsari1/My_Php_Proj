<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Reports\IPReportsController;
use App\Http\Controllers\Reports\RegistrationsController;
use App\Http\Controllers\Reports\OverallCollectionController;
use App\Http\Controllers\Reports\MonthlyCollectionsController;
use App\Http\Controllers\Reports\DoctorwiseCollectionsController;

Route::group(['prefix' => 'reports', 'middleware' => 'auth'], function () {
    Route::get('overall-collections/{start_date}/{end_date}/{base?}', [OverallCollectionController::class, 'index']);
    Route::get('monthly-collections/{year}/{month}/{base?}', [MonthlyCollectionsController::class, 'index']);
    Route::get('doctorwise-collections/{type}/{start_date}/{end_date}/{base?}', [DoctorwiseCollectionsController::class, 'reports']);
    Route::get('doctorwise', [DoctorwiseCollectionsController::class, 'index']);
    //Route::get('referrals/get', [ReferralsController::class, 'getReferrals']);
    Route::get('registrations/{start_date}/{end_date}/{base?}', [RegistrationsController::class, 'index']);
    Route::get('ip-reports/{type}/{start_date}/{end_date}/{base?}', [IPReportsController::class, 'index']);
    Route::get('doctors', [DoctorwiseCollectionsController::class, 'doc']);
});
// Route::get('doctors', [DoctorwiseCollectionsController::class, 'doc']);