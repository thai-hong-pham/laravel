<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\MainController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

route::get('/home', function () {
    return view('admin.dashboard');
});


route::prefix('admin')->group(function () {

    route::prefix('categories')->group(function () {
        route::get('/', [CategoryController::class, 'index'])->name('index.category');

        // THÊM DANH MỤC
        route::get('/add', [CategoryController::class, 'create'])->name('create.category');
        route::post('/store', [CategoryController::class, 'store'])->name('store.category');

        // CẬP NHẬT DANH MỤC
        route::get('/edit/{id}', [CategoryController::class, 'edit'])->name('edit.category');
        route::post('/update/{id}',[CategoryController::class,'update'])->name('update.category');

        // XÓA DANH MỤC
        route::get('/delete/{id}', [CategoryController::class, 'delete'])->name('delete.category');
    });
});
