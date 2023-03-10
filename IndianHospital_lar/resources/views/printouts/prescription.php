<?php

namespace View;

use App\Libraries\Fpdf\Scripts\McTable;

class PDF extends McTable
{

    // public $isFinished = false;
    public $count = 0;

    public function header()
    {
        $this->Image(config('paths.logo'), 14, 8, 30, 23);
        $this->SetFont('opensans', 'B', 14);
        $this->setY(7);
        $this->Cell(190, 6, config('about.name'), 0, 0, 'C');
        $this->Rect(10, 5, 190, 30);

        $this->SetFont('opensans', 'B', 12);
        $this->SetY(20);
        $this->Cell(190, 18, 'PRESCRIPTION', 0, 1, 'C');
        $this->SetXY(150, 6);
        $this->SetFont('times', '', 9);
        $this->MultiCell(50, 4, "No.268/1, Kalkere Village, Near Canara Bank ATM, K Channasandra Main Road, Bangalore 560043.
         Email: indianhospitalmails@rediffmail.com. Ph: 7204542215" , 0,'R');
        // $this->MultiCell(50, 4," No 9, Peejay Complex, 1st Main Road, 2nd Block, Raghavendra Nagar, Horamavu Main Road, Ramamurthy Nagar, Bangalore 560016.\n
        // Email: rkhospital21@rediffmail.com  Ph: 7204542215", 0, 'R');

        $this->Ln(15);
    }

    public function footer()
    {

    }

}

$pdf = new PDF();
$pdf->AliasNbPages();

$pdf->AddFont('opensans', 'B');
$pdf->AddFont('opensans');
$pdf->AddPage();

$pdf->Rect(10, $pdf->GetY(), 190, 19);
$pdf->Ln(3);
$pdf->SetFont('opensans', 'B', 9);
$pdf->Cell(25, 5, 'IHID');

$pdf->SetFont('opensans');
$pdf->Cell(100, 5, ': ' . $data->opReg->pt_id);

$pdf->SetFont('opensans', 'B');
$pdf->Cell(25, 5, 'OP No');

$pdf->SetFont('opensans');
$pdf->Cell(50, 5, ': ' . $data->opReg->op_no, 0, 1);

// New Line
$pdf->SetFont('opensans', 'B');
$pdf->Cell(25, 5, 'Patient Name');

$pdf->SetFont('opensans');
$pdf->Cell(100, 5, ': ' . $data->opReg->name);

$pdf->SetFont('opensans', 'B');
$pdf->Cell(25, 5, 'Bill Date');

$pdf->SetFont('opensans');
$pdf->Cell(50, 5, ': ' . $data->created_at->format('d-m-Y g:i A'), 0, 1);

// New Line
$pdf->SetFont('opensans', 'B');
$pdf->Cell(25, 5, 'Consultant');

$pdf->SetFont('opensans');
$pdf->Cell(40, 5, ': ' . $data->opReg->doctor->name, 0, 0);

$pdf->SetFont('opensans', 'B');
$pdf->Cell(10, 5, 'Age');

$pdf->SetFont('opensans');
$pdf->Cell(50, 5, ': ' . $data->opReg->age, 0, 0);


$pdf->SetFont('opensans', 'B');
$pdf->Cell(25, 5, 'Gender');

$pdf->SetFont('opensans');
$pdf->Cell(25, 5, ': ' . $data->opReg->gender, 0, 1);
$pdf->Ln(5);


if ($data->opinion !== '') {
    $pdf->SetFont('opensans', 'B');
    $pdf->Cell(25, 4, 'Opinion');
    $pdf->Cell(2, 4, ':');
    $pdf->SetFont('opensans');
    $pdf->MultiCell(165, 4, $data->opinion);
    $pdf->Ln(2);
}

if ($data->patient_info !== '') {
    $pdf->SetFont('opensans', 'B');
    $pdf->Cell(25, 4, 'Patient Info');
    $pdf->Cell(2, 4, ':');
    $pdf->SetFont('opensans');
    $pdf->MultiCell(165, 4, $data->patient_info);
    $pdf->Ln(2);
}

if ($data->diagnosis !== '') {
    $pdf->SetFont('opensans', 'B');
    $pdf->Cell(25, 4, 'Diagnosis');
    $pdf->Cell(2, 4, ':');
    $pdf->SetFont('opensans');
    $pdf->Cell(165, 4, $data->diagnosis, 0, 1);
    $pdf->Ln(2);
}

$complaints = json_decode($data->complaints);
if (empty($complaints) === false) {
    $pdf->SetFont('opensans', 'B');
    $pdf->Cell(25, 4, 'Complaints');
    $pdf->Cell(2, 4, ':');
    $pdf->SetFont('opensans');
    $pdf->MultiCell(165, 4, implode(', ', $complaints));
    $pdf->Ln(2);
}

$investigations = json_decode($data->investigations);
if (empty($investigations) === false) {
    $pdf->SetFont('opensans', 'B');
    $pdf->Cell(25, 4, 'Investigations');
    $pdf->Cell(2, 4, ':');
    $pdf->SetFont('opensans');
    $pdf->MultiCell(165, 4, implode(', ', $investigations));
    $pdf->Ln(2);
}

$treatments = json_decode($data->treatments);
if (empty($treatments) === false) {
    $pdf->SetFont('opensans', 'B');
    $pdf->Cell(25, 4, 'Treatments');
    $pdf->Cell(2, 4, ':');
    $pdf->SetFont('opensans');
    $pdf->MultiCell(165, 4, implode(', ', $treatments));
    $pdf->Ln(1);
}

$medicines = json_decode($data->medicines);
if (empty($medicines) === false) {
    $pdf->Ln(5);
    $pdf->SetFont('opensans', 'B', 10);
    $pdf->Cell(190, 6, 'Medicines Prescribed :', 0, 1);
    $pdf->SetWidths([60, 25, 25, 30, 25]);
    // $pdf->SetAligns()
    $pdf->SetFont('opensans', 'B', 9);
    $pdf->createRow([
        'Medicine Name',
        'Food Type',
        'Dosage',
        'Period',
        'Days',
            ], 6);
    $pdf->SetFont('opensans');
    foreach ($medicines as $medicine) {
        $pdf->createRow([
            $medicine->medicine,
            $medicine->type,
            $medicine->dosage,
            $medicine->period,
            $medicine->days,
                ], 6);
    }
}

$pdf->Output();
