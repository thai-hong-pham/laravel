<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomeController;
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
#TRANG CHỦ
route::get('/', [HomeController::class, 'index'])->name('home.client');

#ĐĂNG NHẬP
route::get('/login', [AdminController::class, 'login'])->name('login');
route::post('/login', [AdminController::class, 'saveLogin']);
Route::get('/logout', [AdminController::class, 'logout'])->name('logout');

#TRANG QUẢN TRỊ
route::prefix('admin')->middleware('auth')->group(function () {

    route::get('/', [DashboardController::class, 'index'])->name('home.admin');

    #QUẢN TRỊ DANH MỤC
    route::prefix('categories')->group(function () {
        route::get('/', [CategoryController::class, 'index'])->name('index.category.admin');

        // THÊM DANH MỤC
        route::get('/add', [CategoryController::class, 'create'])->name('create.category.admin');
        route::post('/store', [CategoryController::class, 'store'])->name('store.category.admin');

        // CẬP NHẬT DANH MỤC
        route::get('/edit/{id}', [CategoryController::class, 'edit'])->name('edit.category.admin');
        route::post('/update/{id}', [CategoryController::class, 'update'])->name('update.category.admin');

        // XÓA DANH MỤC
        route::get('/delete/{id}', [CategoryController::class, 'delete'])->name('delete.category.admin');
    });

    #QUẢN TRỊ MENUS
    route::prefix('menus')->group(function () {
        route::get('/', [MenuController::class, 'index'])->name('index.menu.admin');

        route::get('/add', [MenuController::class, 'create'])->name('create.menu.admin');
        route::post('/store', [MenuController::class, 'store'])->name('store.menu.admin');

        route::get('/edit/{id}', [MenuController::class, 'edit'])->name('edit.menu.admin');
        route::post('/update/{id}', [MenuController::class, 'update'])->name('update.menu.admin');

        route::get('/delete/{id}', [MenuController::class, 'delete'])->name('delete.menu.admin');
    });

    #QUẢN TRỊ SẢN PHẨM
    route::prefix('product')->group(function () {
        route::get('/', [ProductController::class, 'index'])->name('index.product.admin');

        route::get('/add', [ProductController::class, 'create'])->name('create.product.admin');
        route::post('/store', [ProductController::class, 'store'])->name('store.product.admin');

        route::get('/edit/{id}', [ProductController::class, 'edit'])->name('edit.product.admin');
        route::post('/update/{id}', [ProductController::class, 'update'])->name('update.product.admin');

        route::get('/delete/{id}', [ProductController::class, 'delete'])->name('delete.product.admin');
    });
});
