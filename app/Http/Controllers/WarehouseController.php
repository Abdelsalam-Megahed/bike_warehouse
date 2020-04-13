<?php

namespace App\Http\Controllers;

use App\Warehouse;
use Illuminate\Http\Request;

class WarehouseController extends Controller
{
    public function index()
    {
        $warehouses = Warehouse::with('extras')->get();
        return $warehouses;
    }

    public function show($id){
        $warehouse = Warehouse::find($id);
        $warehouse->extras;
        return $warehouse;
    }

    public function store(Request $request){
        $warehouse = new Warehouse;
        $warehouse->name = $request->input('name');

        if($warehouse->name != null){
            $warehouse->save();
            return response()->json(["success" => true]);

        }else{
            return response()->json(["error" => "Warehouse name is invalid"]);
        }
    }
}
