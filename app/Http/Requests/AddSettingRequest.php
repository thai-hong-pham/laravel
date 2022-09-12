<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddSettingRequest extends FormRequest
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
            'config_key' => 'required|unique:settings|max:255',
            'config_value' => 'required'
        ];
    }
    public function messages()
    {
        return [
            'config_key.required' => 'Hãy nhập config key',
            'config_key.unique' => 'Config key là duy nhất',
            'config_key.max' => 'Config key tối đa 255 ký tự',
            'config_value.required' => 'Hãy nhập config value',

        ];
        }
}
