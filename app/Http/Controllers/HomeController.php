<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\Settings;
use App\Models\Slider;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {

        $sliders = Slider::latest()->get();
        $categories = Category::where('parent_id', 0)->get();
        $products = Product::latest()->take(12)->get();
        $recommendProducts = Product::latest('view_count', ' desc')->take(12)->get();
        $categoriesLimit = Category::where('parent_id', 0)->take(3)->get();
        return view('client.index', compact('sliders', 'categories', 'products', 'recommendProducts', 'categoriesLimit'));
    }

    public function listCategory($slug, $category_id)
    {
        $categories = Category::where('parent_id', 0)->get();
        $categoriesLimit = Category::where('parent_id', 0)->take(3)->get();
        $products = Product::where('category_id', $category_id)->paginate(12);
        return view('client.products.categories.list', compact('categories', 'categoriesLimit', 'products'));
    }

    public function detailProduct($id)
    {
        $categories = Category::where('parent_id', 0)->get();
        $categoriesLimit = Category::where('parent_id', 0)->take(3)->get();
        $productDetail = Product::find($id);

        return view('client.products.categories.detail_product', compact('categoriesLimit', 'productDetail', 'categories'));
    }

    public function addToCart($id)
    {

        $product = Product::find($id);
        $cart = session()->get('cart');
        if (isset($cart[$id])) {
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + 1;
        } else {
            $cart[$id] = [
                'name' => $product->name,
                'price' => $product->price,
                'image' => $product->feature_image_path,
                'quantity' => 1
            ];
        }
        session()->put('cart', $cart);
        return response()->json([
            'code' => 200,
            'message' => 'success'
        ], 200);
    }

    public function showCart()
    {
        $carts = session()->get('cart');
        $categoriesLimit = Category::where('parent_id', 0)->take(3)->get();
        return view('client.products.cart', compact('categoriesLimit', 'carts'));
    }

    public function updateCart(Request $request)
    {
        if ($request->id && $request->quantity) {
            $carts = session()->get('cart');
            $carts[$request->id]['quantity'] = $request->quantity;
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cartComponent = view('client.products.components.cart_component', compact('carts'))->render();
            return response()->json([
                'cart_component' => $cartComponent,
                'code' => 200
            ], 200);
        }
    }

    public function deleteCart(Request $request)
    {
        if ($request->id) {
            $carts = session()->get('cart');
            unset($carts[$request->id]);
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cartComponent = view('client.products.components.cart_component', compact('carts'))->render();
            return response()->json([
                'cart_component' => $cartComponent,
                'code' => 200
            ], 200);
        }
    }
}
