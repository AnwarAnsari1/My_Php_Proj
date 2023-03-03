<?php

namespace ViewClasses;

use App\Libraries\Fpdf\Scripts\McTable;

class IPBill extends McTable
{
    public function header()
    {
        $this->image(config('paths.logo'), 4,5, 28, 25);
        $this->setFont('times', 'B', 18);
        $this->setY(6);
        $this->cell(200, 6, config('about.name'), 0, 0, 'C');
        // $this->rect(10, 5, 190, 22);

        // $this->setFont('times', 'B', 12);
        // $this->setY(9);
        $this->setXY(49, 12);
        $this->setFont('times', 'B', 11);
        // $this->cell(190, 5, 'OP RECEIPT', 0, 1, 'C');
        $this->multiCell(125, 5, config('about.address'), 0,'C');
        $this->SetLineWidth(0.1);
        $this-> SetDrawColor(229,221,221);
        $this->line(40,30,198,30);
        $this->ln(6);
        // $this->image(config('paths.logo-right'), 172,2, 25, 22);
    }

    public function footer()
    {
        $this->SetTextColor(0, 0, 0);
        $this->SetY(-15);
        $this->SetFont('Arial', 'I', 8);
        $this->Cell(0, 10, 'Page ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
    }
}
