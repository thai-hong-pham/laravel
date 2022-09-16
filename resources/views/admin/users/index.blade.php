@extends('layout.main')
@section('content')
    <div class="col-12">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Danh sách User</h4>
            <div class="table-responsive">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên</th>
                                <th scope="col">Email</th>
                                <th scope="col">
                                    <a href="{{ route('add.user.admin') }}" class="btn btn-success">Thêm mới</a>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $item)
                                <tr>
                                    <td>{{ $item->id }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->email }}</td>
                                    <td>
                                    <a class="btn btn-primary"
                                        href="{{ route('edit.user.admin',['id' => $item->id]) }}">Sửa</a>
                                    <a class="btn btn-danger" onclick="confirm('Bạn có chắc chắn muốn xóa bản ghi này không ?')"
                                        href="{{ route('delete.user.admin',['id' => $item->id]) }}">Xóa</a>
                                </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="col-md-12">
                        {{ $users->links() }}
                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
