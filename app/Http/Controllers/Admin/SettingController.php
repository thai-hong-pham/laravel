<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AddSettingRequest;
use App\Models\Settings;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    private $setting;
    public function __construct(Settings $setting)
    {
        $this->setting = $setting;
    }

    public function index(){
        $settings = $this->setting->latest()->paginate(5);
        return view('admin.settings.index',compact('settings'));
    }

    public function create(){
        return view('admin.settings.add');
    }

    public function store(AddSettingRequest $request){
        $this->setting->create([
            'config_key' => $request->config_key,
            'config_value' => $request->config_value,
        ]);
        return redirect(route('index.settings.admin'));
    }
}
