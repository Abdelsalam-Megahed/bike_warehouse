<?php

namespace App\Http\Controllers;
use App\Models\Bike;
use App\Models\Warehouse;

use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;

class WarehouseController extends Controller
{
    public function index(Request $request)
    {
        $warehouses = WareHouse::with(['bikes.order', 'bikes' => function($query) use ($request)
        {
            if ($request->filled('model'))
                     $query->where('model', $request->model);

                if ($request->filled('size'))
                      $query->where('size', $request->size);
       }
       ]);

        return $warehouses->get();
    }

    public function show($id){
        $warehouse = Warehouse::find($id);

        if(is_null($warehouse)){
            return response()->json(['error' => 'Warehouse not found'], Response::HTTP_NOT_FOUND);
        }

        $warehouse->extras;
        return $warehouse;
    }

    public function store(Request $request){
        $validator =  $this->validateRequest($request);

        if($validator->fails()){
            return response()->json(["error" => $validator->errors()], Response::HTTP_BAD_REQUEST);
        }

        $warehouse = Warehouse::create($request->all());
        return response()->json($warehouse, Response::HTTP_CREATED);
    }

    public function update(Request $request, $id)
    {
        $validator =  $this->validateRequest($request);
        if($validator->fails()){
            return response()->json(["error" => $validator->errors()], Response::HTTP_BAD_REQUEST);
        }

        $warehouse = Warehouse::findOrFail($id);
        $warehouse->update($request->all());
        return $warehouse;
    }

    public function delete($id)
    {
        $warehouse = Warehouse::findOrFail($id);

        if(!is_null($warehouse)){
            $warehouse->delete();
            return response()->json(["response" => "Warehouse has been deleted"], Response::HTTP_ACCEPTED);
        }
    }

    public function validateRequest(Request $request){
        $rules = [
            'name' => 'required|min:2|unique:warehouses',
        ];

        $validator = Validator::make($request->all(), $rules);
        return $validator;
    }
}
