@extends('layout-admin.main')

@section('head')
@endsection
@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">

            <h4 class="mb-4">Thêm slider</h4>

            <form action="{{ route('store.slider.admin') }}" method="post" enctype="multipart/form-data">
                @csrf

                <div class="mt-3">
                    <label for="name" class="form-label">Tên slider</label>
                    <input type="text" name="name" class="form-control" placeholder="Nhập tên slider" value="{{ old('name') }}">
                </div>

                <div class="mt-3">
                    <label for="description">Mô tả</label>
                    <textarea class="form-control" name="description" id="description" rows="3">{{ old('description') }}</textarea>
                </div>

                <div class="mt-3">
                    <label for="image_name" class="form-label">Hình ảnh</label><br>
                    <input type="file" name="image_name" class="form-control">
                </div>

                <button type="submit" class="btn btn-primary mt-3">Tạo slider</button>
            </form>
        </div>
    </div>
@endsection


@section('footer')
@endsection
