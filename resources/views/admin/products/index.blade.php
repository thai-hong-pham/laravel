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
                                <th scope="col">Tên sản phẩm</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Hình ảnh</th>
                                <th scope="col">Danh mục</th>
                                <th scope="col">Nội dung</th>
                                <th scope="col">User ID</th>
                                <th scope="col">Mã danh mục</th>
                                <th scope="col"><a href="{{ route('create.product.admin') }}" class="btn btn-success">Thêm
                                        mới</a></th>
                            </tr>
                        </thead>
                        <tbody>
                            <td>Iphone 11</td>
                            <td>9.000.000Đ</td>
                            <td></td>
                            <td>1</td>
                            <td>sssssssssssssss</td>
                            <td>1</td>
                            <td>3</td>
                            <td>
                                <a class="btn btn-primary"
                                    href="">Sửa</a>
                                <a class="btn btn-danger"
                                    href="">Xóa</a>
                            </td>
                            {{-- @foreach ($categories as $value)
                                <tr>
                                    <td>{{ $value->id }}</td>
                                    <td>{{ $value->name }}</td>
                                    <td>{{ $value->parent_id }}</td>
                                    <td>{{ $value->slug }}</td>
                                    <td>
                                        <a class="btn btn-primary"
                                            href="{{ route('edit.category.admin', ['id' => $value->id]) }}">Sửa</a>
                                        <a class="btn btn-danger"
                                            href="{{ route('delete.category.admin', ['id' => $value->id]) }}">Xóa</a>
                                    </td>
                                </tr>
                            @endforeach --}}
                        </tbody>
                    </table>
                    <div class="col-md-12">
                        {{-- {{ $categories->links() }} --}}
                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
