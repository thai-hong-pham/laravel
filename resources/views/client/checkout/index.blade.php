@extends('layout-home.master')

@section('title')
    <title>Checkout</title>
@endsection

@section('content')
    <div class="container" style="margin-bottom: 30px">
        <div class="row">
            @if (session()->get('cart') != 0)
                <form action="{{ route('placeOrder') }}" method="post">
                    @csrf
                    <div class="col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <h5>basic detail</h5>
                                <hr>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="firstName">Name</label>
                                        <input name="name" type="text" class="form-control" placeholder="Enter Name">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="Email">Email</label>
                                        <input name="email" type="text" class="form-control" placeholder="Enter Email">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="Phone Number">Phone Number</label>
                                        <input name="phone" type="text" class="form-control"
                                            placeholder="Enter Phone Number">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="Address 1">Address 1</label>
                                        <input name="add1" type="text" class="form-control"
                                            placeholder="Enter Address 1">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="Address 2">Address 2</label>
                                        <input name="add2" type="text" class="form-control"
                                            placeholder="Enter Address 2">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="District">District</label>
                                        <input name="district" type="text" class="form-control"
                                            placeholder="Enter District">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="City">City</label>
                                        <input name="city" type="text" class="form-control" placeholder="Enter City">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="Postcode">Postcode</label>
                                        <input name="postcode" type="text" class="form-control"
                                            placeholder="Enter Postcode">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">

                        <div class="card">
                            <div class="card-body">
                                Order Details
                                <hr>
                                <table class="table">
                                    <thead>
                                        <td>Name</td>
                                        <td>Quantity</td>
                                        <td>Price</td>
                                        <td>Total:</td>
                                    </thead>
                                    <tbody>
                                        @php
                                            $total = 0;
                                        @endphp
                                        @foreach ($cartItems as $id => $item)
                                            @php
                                                $total += $item['price'] * $item['quantity'];

                                            @endphp
                                            <tr>
                                                <td>{{ $item['name'] }}</td>
                                                <td>{{ $item['quantity'] }}</td>
                                                <td>{{ $item['price'] }}</td>
                                                <td>{{ $item['price'] * $item['quantity'] }}</td>
                                            </tr>
                                        @endforeach


                                    </tbody>
                                </table>

                                <div class="col-md-7" style="float: right;">
                                    <h3 style="float:right;">Total: {{ number_format($total) }} VNĐ</h3>

                                <button type="submit" class="btn btn-primary" style="float: right;">Place Order</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </form>

            @else
                <h2>Bạn không có mặt hàng nào trong giỏ hàng </h2>
            @endif
        </div>
    </div>
@endsection
