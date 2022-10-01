<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\Slider;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {

        $sliders = Slider::latest()->get();
        $categories = Category::where('parent_id', 0)->get();
        $products = Product::latest()->take(6)->get();
        $recommendProducts = Product::latest('view_count', ' desc')->take(12)->get();
        return view('client.index', compact('sliders', 'categories', 'products', 'recommendProducts'));
    }
}
