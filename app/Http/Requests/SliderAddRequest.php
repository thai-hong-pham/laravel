<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SliderAddRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => 'required|unique:sliders',
            'description' => 'required|min:20',
            'image_path' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Hãy nhập tên slider',
            'name.unique' => 'Slider đã tồn tại , vui lòng chọn 1 tên khác',
            'description.required' => 'Hãy nhập mô tả',
            'image_path.required' => ' Hãy chọn ảnh slider'
        ];

    }
}
