<?php


namespace App\Http\Controllers;
use App\Models\Extra;

use Illuminate\Http\Request;



class ExtraController extends Controller
{
    public function index()
    {
        return Extra::all();
    }

    public function show($id)
    {
        return Extra::find($id);
    }

    public function store(Request $request){
        $order = Extra::create($request->all());
        return response()->json($order, 201);
    }

    public function update(Request $request, $id)
    {
        $order = Extra::findOrFail($id);
        $order->update($request->all());

        return response()->json($order, 200);
    }
}
