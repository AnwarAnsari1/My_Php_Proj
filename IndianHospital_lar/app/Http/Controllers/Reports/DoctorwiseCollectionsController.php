<?php

namespace App\Http\Controllers\Reports;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\OPBill;
use App\Models\IPBill;
use App\Models\Advance;
use App\Models\Doctor;
use Illuminate\Support\Facades\DB;

use App\Services\Reports\DoctorcollectService;

class DoctorwiseCollectionsController extends Controller
{
    /**
     *      @var DoctorcollectService
     */

    // private DoctorcollectService $service;

    // public function __construct(DoctorcollectService $service)
    // {
    //     $this->service = $service;
    // }


    public function index()
    {
        return [
            'cons' => $this->service->getConsultants(),
            'token' => csrf_token()
        ];
    }

    public function doc()
    {
        return 
            Doctor::get(['id', 'name']);
            // 'groups' =>GroupTest::get(['id', 'name as test']),
            // 'tests' => DB::table((new Test)->getTable())->get(['id', 'name as test', 'category', 'reference_range', 'method']),
            
            // 'groups' => DB::table((new GroupTest)->getTable())->get(['id', 'name as test']),
        
    }
    
    public function reports(int $id, string $start_date,string $end_date ,string $base = null)
    {
        // dd($start_date);
        // Doctor::find($id, ['id']);

        // $date = Carbon::createFromFormat('Y/n/j', $start_date . '/' . $end_date . '/1');

        // $last_day = $date->daysInMonth;

        // $start_date = $date->format('Y-m-d').' 00:00:01';
        // $end_date = $date->setDay($last_day)->format('Y-m-d').' 23:59:59';

        $data = [
            'start_date' => $start_date,
            'end_date' => $end_date,
            'collections' => OPBill::where('doctor_id', $id)
            ->whereBetween('created_at', [$start_date . ' 00:00:01', $end_date . ' 23:59:59'])
                    ->select(['total','pt_id','bill_no','payment_method','other_payment','discount','paid','due','collection_date','sub_total','created_at'])
                    // ->unionAll(IPBill::select(['paid', 'created_at', 'payment_method'])->whereBetween('created_at', [$start_date, $end_date]))
                    // ->unionAll(Advance::select(['amount', 'created_at', 'pay_type'])->whereBetween('created_at', [$start_date, $end_date]))
                    ->get(),
                    // ->sortBy(fn($sort) => $sort->created_at->getTimeStamp())
                    // ->map(function($map) {
                    //     $map->date = $map->created_at->format('d-m-Y');
                    //     $map->created_at = null;
                    //     return $map;
                    // })
                    
        ];
        // dd($data);

        $view = view('reports.doctorwise_collection', $data);
        
        if ($base !== null) {
            return response(\base64_encode($view))->header('Content-Type', 'text/plain');
        } else {
            return response($view)->header('Content-Type', 'application/pdf');
        }
    }

}
