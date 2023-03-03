<?php

namespace App\Services\Accounts;

use App\Models\Doctor;
use App\Models\Test;
use App\Models\GroupTest;
use App\Models\Profile;
use App\Models\Referral;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use Carbon\Carbon;

class ReferralService
{
    public object $commissions;

    // Naming Conventions for $this->getTestName function
    public object $Test;

    public object $Group;

    public object $Profile;

    public function getConsultants(): object
    {
        return Doctor::select([
            'id',
            'name'
        ])
            ->where('status', 1)
            ->orderBy('name')->get();
    }
}