<?php

namespace App\Http\Controllers\Others;

use App\Models\IPBill;
use App\Models\OPBill;
use App\Models\Advance;
use App\Models\IPAdmission;
use App\Models\Doctor;
use App\Models\Ward;
use Carbon\Carbon;
use App\Models\IPDischarge;
use App\Models\Prescription;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Registration;
use App\Models\IPTreatment;
use App\Models\User;
use App\Services\Printouts\OPLabResultPrintService;
use App\Services\Printouts\IPLabResultPrintService;
use Illuminate\Http\Response;

class PrintoutController extends Controller
{

    public function generateRegistrationSheet(int $id): Response
    {
        $regDetails = Registration::findOrFail($id);

        $view = view('printouts.registration', compact('regDetails'));

        return response(base64_encode($view))->header('Content-Type', 'text/plain');
    }

    public function generateOPBillReceipt(int $id): Response
    {
        $data = OPBill::findOrFail($id);

        return response(view('printouts.op_bill', compact('data')))->header('Content-Type', 'application/pdf');
    }

    public function generateIPBillReceipt(int $id): Response
    {
        $data = IPBill::findOrFail($id);

        return response(view('printouts.ip_bill', compact('data')))->header('Content-Type', 'application/pdf');
    }

    public function generatePrescription(int $id): Response
    {
        $data = Prescription::where('op_id', $id)->first();

        return \response(\view('printouts.prescription', compact('data')))->header('Content-Type', 'application/pdf');
    }

    public function generateOpLabResult(Request $request): Response
    {
        $request_values = \json_decode($request->getContent());

        $data = (new OPLabResultPrintService())->getResultDatas(
            $request_values->id,
            $request_values->isSelected,
            $request_values->selectedTests
        );
        $data['HeaderType'] = $request_values->header;
        $view = '';

        $view = base64_encode(view('printouts.lab_report', $data));

        return response($view)->header('Content-Type', 'text/plain');
    }

    public function generateIpLabResult(Request $request): Response
    {
        $request_values = \json_decode($request->getContent());

        $data = (new IPLabResultPrintService())->getResultDatas(
            $request_values->id,
            $request_values->isSelected,
            $request_values->selectedTests
        );
        $data['HeaderType'] = $request_values->header;

        $view = base64_encode(view('printouts.ip_lab_report', $data));

        return response($view)->header('Content-Type', 'text/plain');
    }

    public function generateIPCaseSheet(int $id): Response
    {
        $data = IPAdmission::findOrFail($id);

        $view = view('printouts.ip_case_sheet', compact('data'));

        return \response($view)->header('Content-Type', 'application/pdf');
    }

    public function generateDischargeSummary(int $id): Response
    {
        $data = IPDischarge::where('ip_id', $id)->first();

        $view = view('printouts.ip_discharge', compact('data'));

        return \response($view)->header('Content-Type', 'application/pdf');
    }

    public function generateAdvanceReceipt(int $id): Response
    {
        $data = Advance::find($id);

        $view = view('printouts.ip_advance', compact('data'));

        return \response($view)->header('Content-Type', 'application/pdf');
    }
    public function estimatePrint($id)
    {
        $data = IPTreatment::where('ip_id', '=', $id)
            ->with(['treatments:treatment_id,department,category,fees_type,qty,cost,total'])
            ->get(['id', 'pt_id', 'ip_id', 'ref_no', 'created_at'])
            ->sortBy('ref_no');
        $patient = IPAdmission::findOrFail($id);
        $advance = Advance::where('ip_id', '=', $id)->sum('amount');
        $treatments = collect();

        $data->each(function ($val) use (&$treatments) {
            $val->treatments->each(function ($treat) use ($val, &$treatments) {
                if ($treat->category == 'Bed Charges') {
                    $total = $treat->total;
                } else {
                    $total = (float) $treat->qty * (float) $treat->cost;
                }
                $treatments->push([
                    'dept' => $treat->department,
                    'category' => $treat->category,
                    'service' => $treat->fees_type,
                    'qty' => (float) $treat->qty,
                    'cost' => (float) $treat->cost,
                    'total' => $total,
                    'refNo' => $val->ref_no,
                    'date' => $val->created_at->format('Y-m-d H:i:s')
                ]);
            });
        });
        $ward_details = Ward::where('ip_id', $id)->first();

        //Calculating Amount
        $hours = $this->getDayDiff($ward_details->updated_at->timestamp);

        $treatments->push([
            'dept' => 'IP Room Fees',
            'category' => 'Bed Charges',
            'service' => $ward_details->room . ' ' . $ward_details->updated_at->format('d-m-Y') . ' - ' . Carbon::now()->format('d-m-Y'),
            'qty' => $hours,
            'cost' => $ward_details->rent,
            'total' => $ward_details->rent* round($hours),
            'refNo' => 0,
            'date' =>  Carbon::now()->format('d-m-Y'),
        ]);
        $view = view('printouts.estimate_bill', compact('data', 'treatments', 'patient', 'advance'));
        return \response($view)->header('Content-Type', 'application/pdf');
    }
    private function getDayDiff($start_time): int
    {
        // $start = Carbon::parse($start_time);
        // $end =  Carbon::now();
        // $hours = $end->diffInHours($start);
        // return $hours;
        return ceil((time() - $start_time) / (Carbon::SECONDS_PER_MINUTE * Carbon::MINUTES_PER_HOUR * Carbon::HOURS_PER_DAY));
    }
}
