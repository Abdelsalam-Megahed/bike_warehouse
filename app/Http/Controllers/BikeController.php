<?php

namespace App\Http\Controllers;
use App\Models\Bike;
use Illuminate\Http\Request;
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

    public function filter(Request $request){
        $bikes = Bike::whereNotNull('id');

        if ($request->has('size')) {
            $bikes = $bikes->where('size', $request->size);
        }

        if ($request->has('model')) {
            $bikes = $bikes->where('model', $request->model);
        }

        if ($request->has('color')) {
            $bikes = $bikes->where('color', $request->color);
        }

        if ($request->has('status')) {
            $bikes = $bikes->where('status', $request->status);
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
