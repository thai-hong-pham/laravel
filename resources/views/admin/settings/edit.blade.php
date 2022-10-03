@extends('layout-admin.main')
@section('head')
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Edit Config</h4>
            @if (Session::has('msg'))
                <div class="alert alert-success" role="alert">{{ Session::get('msg') }}</div>
            @endif
            <form action="{{ route('update.settings.admin', ['id' => $setting->id]) }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="config_key" class="form-label">Config key</label>
                    <input type="text" name="config_key" class="form-control" id="config_key"
                        placeholder="Nhập config key" value="{{ $setting->config_key }}">
                </div>
                @error('config_key')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror

                @if (request()->type === 'text')
                    <div class="mb-3">
                        <label for="config_value" class="form-label">Config value</label>
                        <input type="text" name="config_value" class="form-control" id="category"
                            placeholder="Nhập config value" value="{{ $setting->config_value }}">
                    </div>
                @elseif (request()->type === 'Textarea')
                    <textarea name="config_value" class="form-control" rows="5">{{ $setting->config_value }}</textarea>
                @endif

                @error('config_value')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror
                <br>
                <button type="submit" class="btn btn-primary mt-3">Update Config</button>
            </form>
        </div>
    </div>
@endsection

@section('footer')
@endsection
