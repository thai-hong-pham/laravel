<?php

use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\UserController;
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




Route::prefix('admin')->group(function () {
    #LOGIN
    Route::get('login', [LoginController::class, 'loginForm'])->name('login');
    Route::post('login', [LoginController::class, 'saveLogin']);

    Route::middleware(['auth'])->group(function () {
        Route::get('main', [MainController::class, 'index'])->name('admin');

        #MENU
        Route::prefix(('menus'))->group(function () {
            Route::get('list', [MenuController::class, 'index'])->name('menu');

            Route::get('add', [MenuController::class, 'create'])->name('menu.add');
            Route::post('add', [MenuController::class, 'saveCreate']);

            Route::get('/edit/{id}', [MenuController::class, 'edit'])->name('menu.edit');
            Route::post('/edit/{id}', [MenuController::class, 'saveEdit']);

            Route::get('/remove/{id}',[MenuController::class,'deleteMenu'])->name('menu.delete');
        });
    });
});
