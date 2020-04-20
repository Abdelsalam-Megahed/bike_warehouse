<?php

namespace App\Http\Controllers;

use App\Models\WarehouseExtra;
use Illuminate\Http\Request;

class WarehouseExtraController extends Controller
{
    public function index()
    {
       return WarehouseExtra::all();
    }

    public function store(Request $request)
    {
        $warehouseExtras = WarehouseExtra::create($request->all());

        return response()->json($warehouseExtras, 201);
    }

    public function update(Request $request, $id)
    {
        $warehouseExtras = WarehouseExtra::findOrFail($id);
        $warehouseExtras->update($request->all());

        return response()->json($warehouseExtras, 200);
    }
}
