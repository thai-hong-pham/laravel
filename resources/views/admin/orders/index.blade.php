@extends('layout-admin.main')

@section('content')

<div class="col-12">
    <div class="bg-light rounded h-100 p-4">
        <h4 class="mb-4">Danh sách Đơn hàng</h4>
        <div class="table-responsive">
            <div class="col-md-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên người đặt hàng</th>
                            <th scope="col">Email</th>
                            <th scope="col">Điện thoại</th>
                            <th scope="col">Địa chỉ</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Action</th>

                        </tr>
                    </thead>
                    <tbody>

                        @foreach ($orders as $value)
                            <tr>
                                <td>{{ $value->id }}</td>
                                <td>{{ $value->name }}</td>
                                <td>{{ $value->email }}</td>
                                <td>{{ $value->phone }}</td>
                                <td>{{ $value->address1 }}</td>
                                @if($value->status == 0)
                                <td>Đang xử lý</td>
                                @else
                                <td style="color: green"><b>Đã hoàn thành</b></td>
                                @endif
                                <td>
                                    <a class="btn btn-primary"
                                        href="{{ route('detail.order.admin', ['id' => $value->id]) }}">Chi tiết</a>

                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>


            </div>

        </div>
    </div>
</div>
@endsection
