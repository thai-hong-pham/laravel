@extends('layout-home.master')

@section('title')
    <title>Eshop|Home</title>
@endsection

@section('css')
    <link href="{{ asset('layout-home/home.css') }}" rel="stylesheet">
@endsection


@section('js')
    <link rel="stylesheet" href="{{ asset('layout-home/js.css') }}">
@endsection

@section('content')
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Shopping Cart</li>
            </ol>
        </div>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                    <tr class="cart_menu">
                        <td class="item">Product</td>
                        <td class="image" style="text-align: center">Image</td>
                        <td class="price">Price</td>
                        <td class="quantity">Quantity</td>
                        <td class="total">Total</td>
                        <td>Action</td>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $total = 0;
                    @endphp
                    @foreach ($carts as $cartItem)
                        @php
                            $total += $cartItem['quantity'] * $cartItem['price'];
                        @endphp
                        <tr>

                            <td class="cart_description">
                                <h4><a href="">{{ $cartItem['name'] }}</a></h4>
                            </td>
                            <td class="cart_product">
                                <a href=""><img width="200px" src="{{ $cartItem['image'] }}" alt=""></a>
                            </td>
                            <td class="cart_price">
                                <p>{{   number_format($cartItem['price'] ) }} VNĐ</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <input class="cart_quantity_input" type="number" name="quantity"
                                        value="{{ $cartItem['quantity'] }}" autocomplete="off" size="2"
                                        min="1">
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">{{ number_format($cartItem['quantity'] * $cartItem['price']) }}
                                    VNĐ</p>
                            </td>
                            <td>
                                <a class="btn btn-primary" href="">Update</a>
                                <a class="btn btn-danger" href="">Delete</a>

                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
            <div class="col-12">
                <h2 style="float:right;margin-right:60px">Total: {{ number_format($total) }} VNĐ</h2>
            </div>
        </div>
    </div>
@endsection
