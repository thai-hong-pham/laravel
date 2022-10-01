<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ProductAddRequest extends FormRequest
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
            'name' => 'bail|required|unique:products|max:255|min:3',
            'price' => 'required|integer',
            'feature_image_path' => 'required|mimes:png,jpg',
            'image_path' => 'required',
            'category_id' => 'required',
            'contents' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Tên không được phép để trống',
            'name.unique' => 'Tên không được phép trùng',
            'name.max' => 'Tên không được phép quá 255 kí tự',
            'name.min' => 'Tên không được phép dưới 10 kí tự',
            'price.required' => 'Giá không được phép để trống',
            'price.integer' => 'Giá phải là giá trị số',
            'feature_image_path.required' => 'Hãy thêm ảnh của sản phẩm',
            'feature_image_path.mimes' => 'Hãy chọn đúng định dạng file ảnh',
            'image_path.required' => 'Hãy thêm ảnh chi tiết của sản phẩm',
            'category_id.required'  => 'Danh mục không được để trống',
            'contents.required'  => 'Nội dung không được để trống',
        ];
    }

}
