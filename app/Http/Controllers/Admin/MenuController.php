<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function index()
    {
        $menus = Menu::all();
        return view('admin.menu.list', compact('menus'));
    }

    public function create()
    {
        return view('admin.menu.add', [
            'title' => 'Thêm danh mục mới'
        ]);
    }

    public function saveCreate(Request $request)
    {
        $menu = new Menu();
        $menu->fill($request->all());
        $menu->save();
        return redirect(route('menu'));
    }

    public function edit($id)
    {
        $menu = Menu::find($id);
        return view('admin.menu.edit', compact('menu'));
    }

    public function saveEdit($id, Request $request)
    {
        $menu = Menu::find($id);
        $menu->fill($request->all());
        $menu->save();
        return redirect(route('menu'));
    }

    public function deleteMenu($id){
        $model = Menu::find($id);
        if(!$model){
            return redirect(route('menu'));
        }
        Menu::destroy($id);
        return redirect()->back();
    }
}
