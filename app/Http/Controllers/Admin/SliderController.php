<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\SliderAddRequest;
use App\Models\Slider;
use Illuminate\Http\Request;
use App\Traits\StorageImageTrait;
use Illuminate\Support\Facades\Log;

class SliderController extends Controller
{
    use StorageImageTrait;
    private $slider;
    public function __construct(Slider $slider)
    {
        $this->slider = $slider;
    }

    public function index(){
        $sliders = $this->slider->paginate(5);
        return view('admin.sliders.index',compact('sliders'));
    }

    public function create(){
        return view('admin.sliders.add');
    }

    public function store(SliderAddRequest $request)
    {
        try {
            $dataInsert = [
                'name' => $request->name,
                'description' => $request->description
            ];
            $dataImageSlider = $this->storageTraitUpload($request, 'image_path', 'slider');
            if( !empty($dataImageSlider) ) {
                $dataInsert['image_name'] = $dataImageSlider['file_name'];
                $dataInsert['image_path'] = $dataImageSlider['file_path'];
            }
            $this->slider->save($dataInsert);
            return redirect()->route('index.slider.admin');
        } catch (\Exception $exception) {
            Log::error('Lỗi : ' . $exception->getMessage() . '---Line: ' . $exception->getLine());
        }


    }

}
