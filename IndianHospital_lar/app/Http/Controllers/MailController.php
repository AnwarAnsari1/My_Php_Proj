<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use App\Models\Registration;
use App\Models\OPBill;
use App\Models\IPBill;
use App\Services\Emails\LabResultService;
use App\Services\Emails\LabResultService as EmailService;
use Response;

class MailController extends Controller
{
    public function __construct(private EmailService $service)
    {
    }


    public function sendMail($id): JsonResponse
    {

        $data = OPBill::findOrFail($id);
        // dd($data);
        // $data['HeaderType'] = $header ? 'wh' : 'woh';
        $view = view('printouts.op_bill', compact('data'))->render();
        // return response(view('printouts.op_bill', compact('data')))->header('Content-Type', 'application/pdf');
        $emailAddress = $data->registration?->email_address;

        $result = $this->service->sendReport($emailAddress, $view);
        return Response::json($result);
    }

    public function sendIPMail($id): JsonResponse
    {

        $data = IPBill::findOrFail($id);
        // dd($data);
        // $data['HeaderType'] = $header ? 'wh' : 'woh';
        $view = view('printouts.ip_bill', compact('data'))->render();
        // return response(view('printouts.op_bill', compact('data')))->header('Content-Type', 'application/pdf');
        $emailAddress = $data->patient?->email_address;

        $result = $this->service->sendReport($emailAddress, $view);
        return Response::json($result);
    }
}
