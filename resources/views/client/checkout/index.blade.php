@extends('layout-home.master')

@section('title')
    <title>Checkout</title>
@endsection

@section('content')
    <div class="container mt-5">
        <div class="row">
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
                                <input name="phone" type="text" class="form-control" placeholder="Enter Phone Number">
                            </div>
                            <div class="col-md-6">
                                <label for="Address 1">Address 1</label>
                                <input name="add1" type="text" class="form-control" placeholder="Enter Address 1">
                            </div>
                            <div class="col-md-6">
                                <label for="Address 2">Address 2</label>
                                <input name="add2" type="text" class="form-control" placeholder="Enter Address 2">
                            </div>
                            <div class="col-md-6">
                                <label for="District">District</label>
                                <input name="district" type="text" class="form-control" placeholder="Enter District">
                            </div>
                            <div class="col-md-6">
                                <label for="City">City</label>
                                <input name="city" type="text" class="form-control" placeholder="Enter City">
                            </div>
                            <div class="col-md-6">
                                <label for="Postcode">Postcode</label>
                                <input name="postcode" type="text" class="form-control" placeholder="Enter Postcode">
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
                            </thead>
                            <tbody>
                                @foreach ($cartItems as $item)
                                    <tr>
                                        <td>{{ $item['name'] }}</td>
                                        <td>{{ $item['quantity'] }}</td>
                                        <td>{{ $item['price'] }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <hr>
                        <button type="submit" class="btn btn-primary" style="float: right">Place Order</button>

                    </div>
                </div>
            </div>
        </form>
        </div>
    </div>
@endsection
