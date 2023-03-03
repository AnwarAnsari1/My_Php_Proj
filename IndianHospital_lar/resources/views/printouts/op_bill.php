<?php

use ViewClasses\OPBill;


// Instanciation of inherited class
$pdf = new OPBill();
$pdf->aliasNbPages();

$pdf->addPage();
$pdf->count = $data->billDetails->count();

// $pdf->rect(10, $pdf->getY(), 190, 19);
$pdf->setFont('times', 'B', 12);
$pdf->cell(190, 5, 'OP RECEIPT', 0, 1, 'C');

$pdf->ln(3);
$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Reg No', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' .sprintf('IN0%03d', $data->pt_id), 0, 0);
// $pdf->cell(60, 5, ': ' . sprintf('0%03d', $ptData->id), 0, 1);

$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Bill No', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(50, 5, ': ' .sprintf('INHB0%03d', $data->bill_no), 0, 1);

// New Line
$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Patient Name', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' . $data->registration->salutation . '.' . $data->registration->name, 0, 0);


$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5,'Age '.'/Gender', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' . $data->registration->age . '.' . $data->registration->gender, 0, 1);



$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Bill Date', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' . $data->collection_date, 0, 0);


// New Line


$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5,'Phone', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' . $data->registration->contact_no , 0, 1);
// New Line
$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Consultant', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->cell(100, 5, ': ' . $data->doctor->name, 0, 0);

$pdf->setFont('times', 'B', 10);
$pdf->cell(25, 5, 'Address', 0, 0);

$pdf->setFont('times', '', 10);
$pdf->multiCell(40, 5, ': ' . $data->registration->address, 0, 1);
// New Line
// $pdf->setFont('times', 'B', 10);
// $pdf->cell(25, 7, "Contact No", 0, 0);
//
// $pdf->setFont('times', '', 10);
// $pdf->cell(110, 7, ": " . $data->ContactNo, 0, 1);

$pdf->setFont('times', 'B', 10);

$pdf->ln(1);
$pdf-> SetDrawColor(164,164,164);

$pdf->cell(15, 7, '  S NO', 'TB', 0, 'R',);
$pdf->cell(155, 7, 'Service Name', 1, 0, 'C');
$pdf->cell(20, 7, 'Amount', 'TB', 1, 'R');

$pdf->setFont('times', '', 9);

$sNo = 0;
// $pdf->isFinished = false;
foreach ($data->billDetails as $result) {
    if (floatval($result->fees) > 0) {
        $pdf->cell(15, 7, ++$sNo, 'TB', 0, 'R');
        $pdf->cell(155, 7, $result->category . ' - ' . $result->fees_type, 1, 0);
        $pdf->cell(20, 7, $result->fees, 'TB', 1, 'R');
    }
}
//$pdf->setWidths([
//    ''
//]);
// New Line
$pdf->ln(1);
$pdf->setFont('times', 'B', 10);

// $pdf->rect(10, $pdf->getY() - 1, 190, ((float) $data->discount > 0 || (float) $data->due > 0) ? 30 : 20);
$pdf->setXY(150, $pdf->getY() );
$pdf->cell(30, 5, 'Total Amount ', 0, 0, );
$pdf->cell(1, 5, ': ', 0, 0, );
$pdf->cell(20, 5, 'Rs.' . $data->total, 0, 1,'R');

if (floatval($data->discount) > 0) {
    $pdf->setXY(150, $pdf->getY() );

    $pdf->cell(30, 5, 'Discount', 0, 0);
$pdf->cell(1, 5, ': ', 0, 0, );

    $pdf->cell(20, 5, 'Rs.' . $data->discount, 0, 1,'R');
    $pdf->setXY(150, $pdf->getY() );

    $pdf->cell(30, 5, 'Net Amount', 0, 0);
$pdf->cell(1, 5, ': ', 0, 0, );

    $pdf->cell(20, 5, 'Rs.' . $data->sub_total, 0, 1,'R');
} else {
    $pdf->ln(5);
}

if (floatval($data->due) > 0) {
    $pdf->cell(22, 5, 'Paid Amount', 0, 0);
    $pdf->cell(120, 5, ': Rs.' . $data->paid, 0, 0);
    $pdf->cell(23, 5, 'Due Amount', 0, 0);
    $pdf->cell(32, 5, ': Rs.' . $data->due, 0, 1);
}

$pdf->ln(6);
//$pdf->cell(144, 5, 'Billed By : ' . $data->user->name, 0, 0);
$pdf->cell(22, 5, 'Cashier', 0, 0,'R');
//
// $pdf->isFinished = true;

$pdf->output('', 'Bill #' . $data->BillNo . '.pdf', 1);
