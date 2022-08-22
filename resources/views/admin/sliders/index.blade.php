@extends('layout.main')
@section('content')
    <div class="col-12">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Danh sách sản phẩm</h4>
            <div class="table-responsive">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên slider</th>
                                <th scope="col">Mô tả</th>
                                <th scope="col">Hình ảnh</th>
                                <th scope="col"><a href="{{ route('add.slider.admin') }}" class="btn btn-success">Thêm
                                        mới</a></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($sliders as $item)
                            <tr>
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->name }}</td>
                                <td>{{ $item->description }}</td>
                                <td><img src="{{ $item->image_path }}" alt=""></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="col-md-12">

                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
