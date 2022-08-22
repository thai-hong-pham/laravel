@extends('layout.main')

@section('head')
@endsection
@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">

            <h4 class="mb-4">Thêm slider</h4>

            @if (Session::has('msg'))
                <div class="alert alert-success" role="alert">{{ Session::get('msg') }}</div>
            @endif

            <form action="{{ route('store.slider.admin') }}" method="post" enctype="multipart/form-data">
                @csrf

                <div class="mt-3">
                    <label for="name" class="form-label">Tên slider</label>
                    <input type="text" name="name" class="form-control" placeholder="Nhập tên sản phẩm" value="{{ old('name') }}">
                </div>
                @error('name')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror

                <div class="mt-3">
                    <label for="content">Mô tả</label>
                    <textarea class="form-control" name="description" id="content" rows="3">{{ old('description') }}</textarea>
                    @error('description')
                        <span class="text-danger"><strong>{{ $message }}</strong></span>
                    @enderror
                </div>

                <div class="mt-3">
                    <label for="image_path" class="form-label">Hình ảnh</label><br>
                    <input type="file" name="image_path" class="form-control">
                </div>
                @error('image_path')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror
                <button type="submit" class="btn btn-primary mt-3">Tạo slider</button>
            </form>
        </div>
    </div>
@endsection


@section('footer')
@endsection
