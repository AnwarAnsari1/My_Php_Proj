<?php

namespace ViewClasses;

use App\Libraries\Fpdf\Scripts\McTable;

class EstimateBill extends McTable
{
    public function header()
    {
        // $this->image(config('paths.logo'), 12, 6, 30, 15);
        $this->setFont('times', 'B', 18);
        // $this->setY(7);
        $this->cell(190, 6, config('about.name'), 0, 1, 'C');

        // $this->multiCell(190, 5, config('about.address'),0,'C');

        // $this->rect(10, 5, 190, 20);
        // $this->line(10, $this->getY(),200,$this->getY());

        $this->setFont('times', 'B', 12);
        $this->setY(26);
        $this->cell(190, 5, 'Estimate Bill', 0, 1, 'C');
        $this->setXY(150, 25);
        $this->setFont('times', '', 9);

        $this->ln(5);
    }

    public function footer()
    {
        $this->SetTextColor(0, 0, 0);
        $this->SetY(-30);
        $this->SetFont('Arial', 'B', 12);
        $this->Cell(0, 10, '24 Hours Services ', 1, 0, 'C');
        $this->SetY(-15);

        $this->SetFont('Arial', 'I', 8);
        $this->Cell(0, 10, 'Page ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
    }
}
