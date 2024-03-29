<?php

use App\Http\Controllers\Admin\AdminRoleController;
use App\Http\Controllers\Admin\AdminUserController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CheckoutController;
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
route::get('/category/{slug}/{id}', [HomeController::class, 'listCategory'])->name('category.product');
route::get('/detail/{id}', [HomeController::class, 'detailProduct'])->name('detail.product');

#ADD TO CARD
route::get('/products/add-to-cart/{id}', [HomeController::class, 'addToCart'])->name('addToCart');
route::get('/products/show-cart', [HomeController::class, 'showCart'])->name('showCart');
route::get('/products/update-cart', [HomeController::class, 'updateCart'])->name('updateCart');
route::get('products/delete-cart', [HomeController::class, 'deleteCart'])->name('deleteCart');

#CHECKOUT
route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout.index');
route::post('/place-order', [CheckoutController::class, 'placeOrder'])->name('placeOrder');

#ĐĂNG NHẬP
route::get('/login', [AdminController::class, 'login'])->name('login');
route::post('/login', [AdminController::class, 'saveLogin']);
route::get('/logout', [AdminController::class, 'logout'])->name('logout');

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

    #QUẢN LÝ SLIDERS
    route::prefix('slider')->group(function () {

        route::get('/', [SliderController::class, 'index'])->name('index.slider.admin');

        route::get('/add', [SliderController::class, 'create'])->name('add.slider.admin');
        route::post('/store', [SliderController::class, 'store'])->name('store.slider.admin');

        route::get('/edit/{id}', [SliderController::class, 'edit'])->name('edit.slider.admin');
        route::post('/update/{id}', [SliderController::class, 'update'])->name('update.slider.admin');

        route::get('/delete/{id}', [SliderController::class, 'delete'])->name('delete.slider.admin');
    });

    #QUẢN LÝ SETTINGS
    route::prefix('settings')->group(function () {

        route::get('/', [SettingController::class, 'index'])->name(('index.settings.admin'));

        route::get('/add', [SettingController::class, 'create'])->name('add.settings.admin');
        route::post('/store', [SettingController::class, 'store'])->name('store.settings.admin');


        route::get('/update/{id}', [SettingController::class, 'edit'])->name('edit.settings.admin');
        route::post('/update/{id}', [SettingController::class, 'update'])->name('update.settings.admin');

        route::get('/delete/{id}', [SettingController::class, 'delete'])->name('delete.settings.admin');
    });

    #USER
    route::prefix('users')->group(function () {

        route::get('/', [AdminUserController::class, 'index'])->name('index.user.admin');

        route::get('/add', [AdminUserController::class, 'create'])->name('add.user.admin');
        route::post('/create', [AdminUserController::class, 'store'])->name('store.user.admin');

        route::get('/edit/{id}', [AdminUserController::class, 'edit'])->name('edit.user.admin');
        route::post('/edit/{id}', [AdminUserController::class, 'update'])->name('update.user.admin');

        route::get('/delete/{id}', [AdminUserController::class, 'delete'])->name('delete.user.admin');
    });

    #ORDER
    route::prefix('order')->group(function () {
        route::get('/', [OrderController::class, 'index'])->name('index.order.admin');
        route::get('/detail/{id}', [OrderController::class, 'detail'])->name('detail.order.admin');

    });
});
