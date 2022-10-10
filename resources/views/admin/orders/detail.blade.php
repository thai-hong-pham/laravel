@extends('layout-admin.main')

@section('content')
    <div class="container">
        <h3>Chi tiết đơn hàng # {{ $orderItem->id }}</h3>
        <div class="col-md-6">
            <div class="">
                <label for="">
                    <h5>Người đặt</h5>
                </label>
                <p>{{ $orderItem->order->name }}</p>
            </div>
            <div class="">
                <label for="">
                    <h5>Sản phẩm</h5>
                </label>
                <p>{{ $orderItem->name }}</p>
            </div>
            <div class="">
                <label for="">
                    <h5>Địa chỉ khác</h5>
                </label>
                <p>{{ $orderItem->order->address2 }}</p>
            </div>
            <div class="">
                <label for="">
                    <h5>Giá</h5>
                </label>
                <p>{{ number_format($orderItem->price) }} VNĐ</p>
            </div>
            <div class="">
                <label for="">
                    <h5>Số lượng</h5>
                </label>
                <p>{{ $orderItem->quantity }}</p>
            </div>
            <div class="">
                <label for="">
                    <h5>Tổng Tiền</h5>
                </label>
                <h5>{{ number_format($orderItem->quantity * $orderItem->price) }} VNĐ</h5>
            </div>
        </div>
    </div>
@endsection
