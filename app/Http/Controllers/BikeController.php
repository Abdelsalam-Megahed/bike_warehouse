<?php

namespace App\Http\Controllers;
use App\Bike;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BikeController extends Controller
{

    public function index()
    {
        $bikes = Bike::all();
        return $bikes;
    }

    public function show($id){
        $bike = Bike::find($id);
        if($bike){
            $bike->order;
        }
        return response()->json([$bike]);
    }

    public function filter(Request $request){
        $bikes = Bike::whereNotNull('id');

        if ($request->has('size')) {
            $bikes = $bikes->where('size', $request->size);
        }

        if ($request->has('model')) {
            $bikes = $bikes->where('model', $request->model);
        }

        return $bikes->get();
    }

    public function update(Request $request, $id){
        $bike = Bike::findOrFail($id);
        $bike->update($request->all());
        return $bike;
    }

    public function store(Request $request){
        $bike = new Bike;
            $bike->model = $request->input('model');
            $bike->color = $request->input('color');
            $bike->frame_number = $request->input('frame_number');
            $bike->sku_code = $request->input('sku_code');
            $bike->status = $request->input('status');
            $bike->size = $request->input('size');
            $bike->weight = $request->input('weight');
            $bike->length = $request->input('length');
            $bike->height = $request->input('height');
            $bike->width = $request->input('width');
            $bike->warehouse_id = $request->input('warehouse_id');

        $validator = Validator::make($request->all(), [
            'warehouse_id', 'model', 'size', 'weight', 'status', 'length',
            'height', 'width', 'frame_number', 'sku_code' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(["error" => "Please enter valid data"]);
        }else{
            $bike->save();
            return response()->json([$bike]);
        }
    }
}
