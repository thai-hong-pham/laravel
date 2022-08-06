<?php

namespace App\Http\Controllers\Admin;

use App\Components\Recusive;
use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    private $category;
    public function __construct(Category $category)
    {
        $this->category = $category;
    }
    public function index(){
        return view('admin.products.index');
    }

    public function create(){
        $htmlOption = $this->getCategory($parentId = '');
        return view('admin.products.add',compact('htmlOption'));
    }

    public function getCategory($parentId)
    {
        $data = $this->category->all();
        $recusive = new Recusive($data);
        $htmlOption = $recusive->categoryRecusive($parentId);
        return $htmlOption;
    }
}
