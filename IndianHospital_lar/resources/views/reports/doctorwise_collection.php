<?php

use ViewClasses\Reports\Footer;

$pdf = new Footer('P', 'mm', [265, 297]);
$pdf->aliasNbPages();
$pdf->addPage();

$pdf->addFont('opensans', 'B');
$pdf->addFont('opensans');

$pdf->setFont('opensans', 'B', 12);
$pdf->cell(250, 10, "Collection Report from $start_date to $end_date", 0, 1, 'C');

$pdf->ln(3);
$pdf->setDrawColor(169, 169, 169);
$pdf->cell(60, 8, 'OP Collection', 0, 1);
$pdf->setFont('opensans', 'B', 10);

$pdf->cell(15, 8, 'Bill No', 1, 0);
$pdf->cell(15, 8, 'Pt ID', 1, 0);
$pdf->cell(20, 8, 'Bill Date', 1, 0);
$pdf->cell(50, 8, 'Patient Name', 1, 0);
$pdf->cell(25, 8, 'Paying Type', 1, 0);
$pdf->cell(20, 8, 'Total', 1, 0);
$pdf->cell(20, 8, 'Discount', 1, 0);
$pdf->cell(20, 8, 'Sub Total', 1, 0);
$pdf->cell(20, 8, 'Paid', 1, 0);
$pdf->cell(20, 8, 'Due', 1, 1);


$pdf->setFont('opensans', '', 8);

$op_total = 0;

$pay_type = '';

foreach ($collections as $collections) {
    $pay_type = $collections->payment_method === 'Others' ?
    $collections->other_payment :
    $collections->payment_method;

    $pdf->cell(15, 8, $collections->bill_no, 1, 0, 'R');
    $pdf->cell(15, 8, $collections->patient->id, 1, 0, 'R');
    $pdf->cell(20, 8, $collections->created_at->format('Y-m-d'), 1, 0);
    // $pdf->cell(20,8);
    $pdf->cell(50, 8, $collections->patient->salutation . '.' . $collections->patient->name, 1, 0);
    $pdf->cell(25, 8, $pay_type, 1, 0);
    $pdf->cell(20, 8, number_format($collections->total, 2), 1, 0, 'R');
    $pdf->cell(20, 8, $collections->discount, 1, 0, 'R');
    $pdf->cell(20, 8, $collections->sub_total, 1, 0, 'R');
    $pdf->cell(20, 8, $collections->paid, 1, 0, 'R');
    $pdf->cell(20, 8, $collections->due, 1, 1, 'R');
    $op_total += (float) $collections->paid;
}
$pdf->setFont('opensans', 'B', 10);
$pdf->cell(225, 8, 'Total Amount Collected is Rs.' . number_format($op_total, 2), 1, 1, 'L');
$pdf->cell(225, 8, 'Total Amount Collected is Rs.' . getIndianCurrency($op_total, 2), 1, 1, 'L');

$pdf->ln(3);
// $pdf->setFont('opensans', 'B', 12);
// $pdf->cell(60, 8, 'IP Collection', 0, 1);
// $pdf->setFont('opensans', 'B', 10);

// $pdf->cell(15, 8, 'Bill No', 1, 0);
// $pdf->cell(15, 8, 'IP No', 1, 0);
// $pdf->cell(20, 8, 'Bill Date', 1, 0);
// $pdf->cell(50, 8, 'Patient Name', 1, 0);
// $pdf->cell(25, 8, 'Paying Type', 1, 0);
// $pdf->cell(20, 8, 'Total', 1, 0);
// $pdf->cell(20, 8, 'Discount', 1, 0);
// $pdf->cell(20, 8, 'Sub Total', 1, 0);
// $pdf->cell(20, 8, 'Advance', 1, 0);
// $pdf->cell(20, 8, 'Paid', 1, 0);
// $pdf->cell(20, 8, 'Due', 1, 1);

$pdf->setFont('opensans', '', 8);

// $ip_total = 0;
// $balance = 0;
// foreach ($ip_collections as $ip_collection) {
//     $pay_type = $ip_collection->payment_method === 'Others' ?
//     $ip_collection->other_payment :
//     $ip_collection->payment_method;

//     $pdf->cell(15, 8, $ip_collection->bill_no, 1, 0, 'R');
//     $pdf->cell(15, 8, $ip_collection->admission->ip_no, 1, 0, 'R');
//     $pdf->cell(20, 8, $ip_collection->created_at->format('d-m-Y'), 1, 0);
//     $pdf->cell(50, 8, $ip_collection->patient->salutation . '.' . $ip_collection->patient->name, 1, 0);
//     $pdf->cell(25, 8, $pay_type, 1, 0);
//     $pdf->cell(20, 8, $ip_collection->total, 1, 0, 'R');
//     $pdf->cell(20, 8, $ip_collection->discount, 1, 0, 'R');
//     $pdf->cell(20, 8, $ip_collection->sub_total, 1, 0, 'R');
//     $pdf->cell(20, 8, $ip_collection->advance_paid, 1, 0, 'R');
//     $pdf->cell(20, 8, $ip_collection->paid, 1, 0, 'R');
//     $pdf->cell(20, 8, $ip_collection->due, 1, 1, 'R');
//     $ip_total += (float) $ip_collection->paid;
// }
// $pdf->setFont('opensans', 'B', 10);
// $pdf->cell(245, 8, 'Total Amount Collected is Rs.' . number_format($ip_total, 2), 1, 1, 'L');

// //Advances
// $pdf->ln(3);
// $pdf->setFont('opensans', 'B', 12);
// $pdf->cell(60, 8, 'Advances', 0, 1);
// $pdf->setFont('opensans', 'B', 10);

// $pdf->cell(15, 8, 'IP No', 1, 0, 'R');
// $pdf->cell(15, 8, 'Ref No', 1, 0, 'R');
// $pdf->cell(25, 8, 'Advance Date', 1, 0);
// $pdf->cell(50, 8, 'Patient Name', 1, 0);
// $pdf->cell(25, 8, 'Paying Type', 1, 0);
// $pdf->cell(20, 8, 'Paid', 1, 1);

// $pdf->setFont('opensans', '', 8);

// $advance_total = 0;

// foreach ($advances as $advance) {
//     $pay_type = $advance->pay_type === 'Others' ? $advance->other_pay_type : $advance->pay_type;
//     $pdf->cell(15, 8, $advance->admission->ip_no, 1, 0, 'R');
//     $pdf->cell(15, 8, $advance->advance_no, 1, 0, 'R');
//     $pdf->cell(25, 8, $advance->created_at->format('d-m-Y'), 1, 0);
//     $pdf->cell(50, 8, $advance->patient->salutation . '.' . $advance->patient->name, 1, 0);
//     $pdf->cell(25, 8, $pay_type, 1, 0);
//     $pdf->cell(20, 8, $advance->amount, 1, 1, 'R');
//     $advance_total += (float) $advance->amount;
// }
// $pdf->setFont('opensans', 'B', 10);
// $pdf->cell(150, 8, 'Total Amount Collected is Rs.' . number_format($advance_total, 2), 1, 1, 'L');


// $grand_total = number_format($op_total + $ip_total + $advance_total, 2);

// $pdf->setFont('opensans', 'B', 12);
// $pdf->cell(250, 10, "Total Amount Collected between $start_date and $end_date is Rs.$grand_total", 0, 1);

$pdf->output('I', 'OP Collection Report.pdf');
