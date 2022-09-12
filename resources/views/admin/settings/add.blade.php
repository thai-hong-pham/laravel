@extends('layout.main')
@section('head')
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Thêm Config</h4>
            @if (Session::has('msg'))
                <div class="alert alert-success" role="alert">{{ Session::get('msg') }}</div>
            @endif
            <form action="{{ route('store.settings.admin') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="config_key" class="form-label">Config key</label>
                    <input type="text" name="config_key" class="form-control" id="config_key"
                        placeholder="Nhập config key">
                </div>
                @error('config_key')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror

                @if (request()->type === 'Text')
                    <div class="mb-3">
                        <label for="config_value" class="form-label">Config value</label>
                        <input type="text" name="config_value" class="form-control" id="category"
                            placeholder="Nhập config value">
                    </div>
                @elseif (request()->type === 'Textarea')
                    <textarea name="config_value" class="form-control" rows="5">Nhập config value</textarea>
                @endif

                @error('config_value')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror
                <br>
                <button type="submit" class="btn btn-primary mt-3">Tạo Config</button>
            </form>
        </div>
    </div>
@endsection

@section('footer')
@endsection
