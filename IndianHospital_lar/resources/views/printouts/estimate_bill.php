<?php

use ViewClasses\EstimateBill;

// $room_name=$treatments
// ->where('department', '=', 'IP Room Fees')
// ->last()
// ->fees_type;
// dd($patient->ward);
$pdf = new EstimateBill();
$pdf->aliasNbPages();
$pdf->addPage();
$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Admission Date', 0, 0);

// $admissionTime=DateTime::createFromFormat('H:i:s', $patient->admissionTime)->format('h:i A');
//$admissionDate=DateTime::createFromFormat('Y-m-d', $patient->admissionDate)->format('d-m-Y'); -->
$pdf->setFont('times', 'B', 10);
$pdf->cell(90, 5, ': ' . '', 0, 0);

$pdf->cell(37, 5, 'Estimate Bill Date', 0, 0);
$pdf->setFont('times', '', 10);
$pdf->cell(30, 5, ': ' . date('d-m-y h:i:s'), 0, 1);

// $pdf->rect(10, $pdf->getY(), 190, 40);
// $pdf->setFont('times', 'B', 10);
// $pdf->cell(27, 5, 'Bill No', 0, 0);

// $pdf->cell(50, 5, ': ' . $data->bill_no, 0, 1);
//         $pdf->line(10, $pdf->getY(),200,$pdf->getY());


$pdf->ln(3);
$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Patient Name', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' . $patient->patient->salutation . '.' . $patient->patient->name, 0, 0);

$pdf->setFont('times', 'B', 10);
$pdf->cell(27, 5, 'IP NO', 0, 0);

$pdf->setFont('times', '', 10);
// $pdf->cell(100, 5, ': ' . sprintf('IPD' . $patient->created_at->format('Ym') . '/' . '%02d', $patient->ip_no), 0, 1);
$pdf->cell(100, 5, ': '. $patient->ip_no, 0, 1);

$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Address', 0, 0);
// MultiCell(float w, float h, string txt [, mixed border [, string align [, boolean fill]]])
$pdf->setFont('times', '', 10);
$pdf->MultiCell(80, 5, ': ' . $patient->patient->address, 0, 1);

$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Admission Date', 0, 0);
// dd($patient)
$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' .$patient->created_at->format('d-m-Y h:i A'), 0, 0);

$pdf->setFont('times', 'B', 10);
$pdf->cell(27, 5, 'Contact No', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(40, 5, ': ' . $patient->patient->contact_no, 0, 1);

$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Age / Gender', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' . $patient->patient->age . ' / ' . $patient->patient->gender, 0, 0);


// $pdf->setFont('times', 'B', 10);
// $pdf->cell(27, 5, 'Discharge Date', 0, 0);

// $pdf->setFont('times', '', 10);
// $pdf->cell(50, 5, ': ' . $data->discharge->created_at->format('d-m-Y h:i A'), 0, 1);


$pdf->setFont('times', 'B', 10);
$pdf->cell(27, 5, 'Consultant', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(80, 5, ': ' . $patient->doctor->name, 0, 1);

$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Room Details', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' . $patient->ward->ward .' /' . $patient->ward->room .' /'. $patient->ward->bed, 0, 1);
// $pdf->setFont('times', 'B', 10);
// $pdf->cell(27, 5, 'Bill Type', 0, 0);

// $pdf->setFont('times', '', 10);
// $pdf->cell(50, 5, ': ' . $data->payment_method, 0, 1);


// $pdf->ln(5);
//Table Starts Here
$pdf->setY($pdf->getY()+5);
$pdf->setWidths([10, 60, 70, 18, 10, 22]);
$pdf->setAligns(['R', 'L', 'L', 'R', 'R', 'R']);
$pdf->setFont('times', 'B', 10);
$pdf->createRow(['S.No', 'Category', 'Services', 'Fees', 'Qty', 'Total'], 7, true);

$pdf->setFont('times', '', 9);


$sNo = 0;
// dd($patient);
$total=0;
foreach ($treatments as $val) {
        if ((float)$val['total'] >= 0) {
                $pdf->createRow([
                        ++$sNo . '.',
                        $val['category'],
                        $val['service'],
                        $val['cost'],
                        $val['qty'],
                        $val['total']
                ], 6, true);
                $total += $val['total'];
        }
}

//New Line
$pdf->ln();
$pdf->setFont('times', 'B', 10);
$pdf->cell(170, 5, 'Total Amount : ', 0, 0, 'R');
$pdf->cell(20, 5, 'Rs. '.$total, 0, 1, 'R');
if ((float)$advance > 0) {
    $pdf->cell(170, 5, 'Advance Paid : ', 0, 0, 'R');
    $pdf->cell(20, 5, 'Rs. '.$advance, 0, 1, 'R');
}
// if ((float)$data->discount > 0) {
//     $pdf->cell(170, 5, 'Concession : ', 0, 0, 'R');
//     $pdf->cell(20, 5, 'Rs. '.$data->discount, 0, 1, 'R');
// }
// if ($data->total !== $data->sub_total) {
//     $pdf->cell(170, 5, 'Sub Total : ', 0, 0, 'R');
//     $pdf->cell(20, 5, 'Rs. '.$data->sub_total, 0, 1, 'R');
// }
// if ((float)$data->refund > 0) {
//     $pdf->cell(170, 5, 'Refund Amount : ', 0, 0, 'R');
//     $pdf->cell(20, 5, 'Rs. '.$data->refund, 0, 1, 'R');
// }
// $pdf->cell(170, 5, 'Paid Amount : ', 0, 0, 'R');
// $pdf->cell(20, 5, 'Rs. '.$data->paid, 0, 1, 'R');
// if ((float)$data->due > 0) {
//     $pdf->cell(170, 5, 'Balance Amount : ', 0, 0, 'R');
//     $pdf->cell(20, 5, 'Rs. '.$data->due, 0, 1, 'R');
// }

// $pdf->setY($pdf->getY() - 8);
// $pdf->setTextColor(12, 117, 15);
// $pdf->cell(190, 10, 'Paid Amount In Words : ' . getIndianCurrency(floatval($data->paid)), 0, 1, 'L');

$pdf->output('', 'Bill #' . '.pdf', 1);
