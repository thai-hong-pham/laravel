<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Components\Recusive;
use Illuminate\Support\Str;


class CategoryController extends Controller
{

    private $category;

    public function __construct(Category $category)
    {

        $this->category = $category;
    }

    public function index()
    {
        $categories = $this->category->latest()->paginate(5);
        return view('admin.categories.index', compact('categories'));
    }

    public function getCategory($parentId)
    {
        $data = $this->category->all();
        $recusive = new Recusive($data);
        $htmlOption = $recusive->categoryRecusive($parentId);
        return $htmlOption;
    }

    public function create()
    {

        $htmlOption = $this->getCategory($parentId = '');
        return view('admin.categories.add', compact('htmlOption'));
    }

    public function store(Request $request)
    {
        $this->category->create([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => Str::slug($request->name)
        ]);
        return redirect(route('index.category'));
    }

    public function edit($id)
    {
        $category = $this->category->find($id);
        $htmlOption = $this->getCategory($category->parent_id);
        return view('admin.categories.edit', compact('category', 'htmlOption'));
    }

    public function update($id,Request $request){
        $this->category->find($id)->update([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => Str::slug($request->name)
        ]);
        return redirect(route('index.category'));
    }

    public function delete($id)
    {
        $this->category->find($id)->delete();
        return redirect(route('index.category'));

    }
}
