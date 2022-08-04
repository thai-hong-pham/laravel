<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function login(){
        return view('login');
    }
    public function saveLogin(Request $request){
        $remember = $request->has('remember') ? true : false ;
        if(auth()->attempt([
            'email' => $request->email,
            'password' => $request->password
        ], $remember)){
            return redirect(route('home.admin'));
        }else{
            return redirect()->back();
        };
    }
}
