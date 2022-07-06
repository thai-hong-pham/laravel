@extends('layout.main')

@section('content')

<div class="col-12">
    <div class="bg-light rounded h-100 p-4">
        <h6 class="mb-4">Responsive Table</h6>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Tên danh mục</th>
                        <th scope="col">Mô tả</th>
                        <th scope="col">Nội dung</th>
                        <th scope="col"><a href="{{ route('menu.add') }}" class="btn btn-success">Thêm mới</a></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($menus as $menu)
                    <tr>
                        <td>{{ $menu->id }}</td>
                        <td>{{ $menu->name }}</td>
                        <td>{{ $menu->description }}</td>
                        <td>{{ $menu->content }}</td>
                        <td>
                            <a class="btn btn-primary" href="{{ route('menu.edit',['id'=>$menu->id]) }}">Sửa</a>
                            <a class="btn btn-danger"  href="{{ route('menu.delete',['id'=>$menu->id]) }}">Xóa</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
