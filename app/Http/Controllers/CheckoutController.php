<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
use App\Models\OrderItem;
use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    public function index(){
        $categoriesLimit = Category::where('parent_id', 0)->take(3)->get();
        $cartItems = session()->get('cart');
        return view('client.checkout.index',compact('categoriesLimit','cartItems'));
    }

    public function placeOrder(Request $request){
        $order = new Order();
        $order->name = $request->input('name');
        $order->email = $request->input('email');
        $order->phone = $request->input('phone');
        $order->address1 = $request->input('add1');
        $order->address2 = $request->input('add2');
        $order->district = $request->input('district');
        $order->city = $request->input('city');
        $order->postcode = $request->input('postcode');
        $order->save();

        $order->id;
        $cartItems = session()->get('cart');
        foreach($cartItems as $item){
            OrderItem::create([
                'order_id' => $order->id,
                'name' => $item['name'],
                'quantity' => $item['quantity'],
                'price' => $item['price']
            ]);
        }
        $cartItems = session()->flush('cart');
        return view('client.products.cart');
    }
}
