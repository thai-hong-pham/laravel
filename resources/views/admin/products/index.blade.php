@extends('layout-admin.main')

@section('css')
    <link rel="stylesheet" href="{{ asset('admin-docs/product/index/index.css') }}">
@endsection
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
                                <th scope="col" class="col-md-2">Tên sản phẩm</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Hình ảnh</th>
                                <th scope="col" class="col-md-4">Nội dung</th>
                                <th scope="col">Danh mục</th>
                                <th scope="col"><a href="{{ route('create.product.admin') }}"
                                        class="btn btn-success">Thêm
                                        mới</a></th>
                            </tr>
                        </thead>
                        <tbody>

                            @foreach ($products as $value)
                                <tr>
                                    <td>{{ $value->id }}</td>
                                    <td>{{ $value->name }}</td>
                                    <td>{{ $value->price }}</td>
                                    <td><img class="product_image_150_100" src="{{ $value->feature_image_path }}"
                                            alt=""></td>
                                    <td>{{ $value->content }}</td>
                                    <td>{{ $value->category->name }}</td>
                                    <td>
                                        <a class="btn btn-primary"
                                            href="{{ route('edit.product.admin', ['id' => $value->id]) }}">Sửa</a>
                                        <a class="btn btn-danger"
                                            onclick="confirm('Bạn có chắc chắn muốn xóa bản ghi này không ?')"onclick="confirm('Bạn có chắc chắn muốn xóa bản ghi này không ?')"
                                            href="{{ route('delete.product.admin', ['id' => $value->id]) }}">Xóa</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="col-md-12">
                        {{ $products->links() }}
                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
