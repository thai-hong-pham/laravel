<?php

namespace App\Http\Controllers\Admin\Users;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    public function loginForm()
    {
        return view('admin.login');
    }

    public function saveLogin(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);
        if (Auth::attempt($credentials, $request->input('remember'))) {
            $user = Auth::user();
            $user->save();
            $request->session()->regenerate();
            return redirect(route('admin'));
        }
        Session::flash('error','Email hoặc password không chính xác');
            return redirect()->back();

    }
}
