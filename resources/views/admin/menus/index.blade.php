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
                                <th scope="col">Tên menu</th>
                                <th scope="col">Menu cha</th>
                                <th scope="col">Slug</th>
                                <th scope="col"><a href="{{ route('create.menu') }}" class="btn btn-success">Thêm
                                        mới</a></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($menus as $value)
                                <tr>
                                    <td>{{ $value->id }}</td>
                                    <td>{{ $value->name }}</td>
                                    <td>{{ $value->parent_id }}</td>
                                    <td>{{ $value->slug }}</td>
                                    <td>
                                        <a class="btn btn-primary"
                                            href="{{ route('edit.menu',['id' => $value->id]) }}">Sửa</a>
                                        <a class="btn btn-danger"
                                            href="{{ route('delete.menu',['id' => $value->id]) }}">Xóa</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="col-md-12">
                        {{ $menus->links() }}
                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
