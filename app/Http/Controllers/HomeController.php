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
        $products = Product::latest()->take(6)->get();
        $recommendProducts = Product::latest('view_count', ' desc')->take(12)->get();
        $categoriesLimit = Category::where('parent_id', 0)->take(3)->get();
        return view('client.index', compact('sliders', 'categories', 'products', 'recommendProducts', 'categoriesLimit'));
    }

    public function listCategory($slug , $category_id){
        $categories = Category::where('parent_id', 0)->get();
        $categoriesLimit = Category::where('parent_id', 0)->take(3)->get();
        $products = Product::where('category_id', $category_id)->paginate(9);
        return view('client.products.categories.list',compact('categories','categoriesLimit','products'));
    }
}
