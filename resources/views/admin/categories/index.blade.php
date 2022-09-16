@extends('layout.main')

@section('content')
    <div class="col-12">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Danh sách danh mục</h4>
            <div class="table-responsive">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Tên danh mục</th>
                                <th scope="col">Danh mục cha</th>
                                <th scope="col">Slug</th>
                                <th scope="col"><a href="{{ route('create.category.admin') }}"
                                        class="btn btn-success">Thêm
                                        mới</a></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($categories as $value)
                                <tr>
                                    <td>{{ $value->id }}</td>
                                    <td>{{ $value->name }}</td>
                                    <td>{{ $value->parent_id }}</td>
                                    <td>{{ $value->slug }}</td>
                                    <td>
                                        <a class="btn btn-primary"
                                            href="{{ route('edit.category.admin', ['id' => $value->id]) }}">Sửa</a>
                                        <a class="btn btn-danger"
                                            onclick="confirm('Bạn có chắc chắn muốn xóa bản ghi này không ?')"
                                            href="{{ route('delete.category.admin', ['id' => $value->id]) }}">Xóa</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="col-md-12">
                        {{ $categories->links() }}
                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
