<?php

namespace App\Http\Controllers;
use App\Models\Bike;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class BikeController extends Controller
{
    public function index()
    {
        $bikes = Bike::all();
        return $bikes;
    }

    public function show($id){
        $bike = Bike::find($id);
        if(is_null($bike)){
            return response()->json(['error' => 'Bike not found'], Response::HTTP_NOT_FOUND);
        }else
            $bike->order;
            return response()->json($bike, Response::HTTP_OK);
    }

    public function store(Request $request){
        $l_number = "L-". rand(15,10000);
        $frame_number = "FRA". rand(15,10000);

        $bike = new Bike;
            $bike->model = $request->input('model');
            $bike->color = $request->input('color');
            $bike->l_number =  $l_number;
            $bike->frame_number =  $frame_number;
            $bike->sku_code = $request->input('sku_code');
            $bike->status = $request->input('status');
            $bike->size = $request->input('size');
            $bike->weight = $request->input('weight');
            $bike->length = $request->input('length');
            $bike->height = $request->input('height');
            $bike->width = $request->input('width');
            $bike->warehouse_id = $request->input('warehouse_id');

        $rules = [
            'model' => 'required|in:Curt Belt,Curt,Stout Green,Stout Grey,Stellar Red,Stellar Blue',
            'sku_code' => 'required|string',
            'status' => 'required|in:Arrived,In transit',
            'size' => 'required|in:S,M,L',
            'weight' => 'required|Numeric',
            'length', 'height', 'width' => 'required|integer',
            'warehouse_id' =>'required|exists:warehouses,id'
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
            return response()->json(["error" => $validator->errors()], Response::HTTP_BAD_REQUEST);
        }

        $bike->save();
        return response()->json($bike, Response::HTTP_CREATED);
        }

    public function update(Request $request, $id){
        $rules = [
            'warehouse_id' =>'required|exists:warehouses,id'
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
            return response()->json(["error" => $validator->errors()], Response::HTTP_BAD_REQUEST);
        }

        $bike = Bike::findOrFail($id);
        $bike->update($request->all());
        return response()->json($bike, 200);
    }

    public function destroy($id){
        $bike = Bike::findOrFail($id);

        if(!is_null($bike)){
            $bike->delete();
            return response()->json(["response" => "Bike has been deleted"], Response::HTTP_ACCEPTED);
        }
    }

    public function getBikeGraph(){
        return Bike::select(['model', 'size', DB::raw("COUNT(*) as count")])->groupBy('model', 'size')->get();
    }

    public function getBikeModels(){
        return Bike::select('model')->distinct()->get();
    }

    public function getBikeSizes(){
        return Bike::select('size')->distinct()->get();
    }
}
