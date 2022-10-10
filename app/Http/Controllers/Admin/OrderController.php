<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderItem;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::all();
        return view('admin.orders.index',compact('orders'));
    }

    public function detail($id){
        $orderItem = OrderItem::where('id',$id)->first();
        return view('admin.orders.detail',compact('orderItem'));
    }
}
