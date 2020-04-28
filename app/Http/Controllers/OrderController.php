<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;


class OrderController extends Controller
{
    public function index()
    {
        return Order::all();
    }

    public function show($id)
    {
        $order = Order::find($id);
        return response()->json([$order], Response::HTTP_OK);
    }

    public function store(Request $request){
        $order = new Order;
        $order->order_number = "AMP". rand(15,100000);
        $order->customer_name = $request->input('customer_name');
        $order->customer_email = $request->input('customer_email');
        $order->customer_phone = $request->input('customer_phone');
        $order->customer_address = $request->input('customer_address');
        $order->bike_id = $request->input('bike_id');

        $rules = [
            'customer_name' => 'required|string|min:3|max:20',
            'customer_email' => 'required|email',
            'customer_phone' => 'required',
            'customer_address' => 'required|string',
            'bike_id' =>'required|exists:bikes,id'
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
            return response()->json(["error" => $validator->errors()], Response::HTTP_BAD_REQUEST);
        }

        $order->save();
        return response()->json($order, Response::HTTP_CREATED);
    }

    public function update(Request $request, $id)
    {
        $order = Order::findOrFail($id);
        $order->update($request->all());

        return response()->json($order, Response::HTTP_ACCEPTED);
    }
}
