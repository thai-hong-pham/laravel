@extends('layout-home.master')

@section('title')
    <title>Eshop|Home</title>
@endsection

@section('css')
    <link href="{{ asset('layout-home/home.css') }}" rel="stylesheet">
@endsection


@section('js')
    <link rel="stylesheet" href="{{ asset('layout-home/home.js') }}">
    <script>
        function cartUpdate(event) {
            event.preventDefault();
            let urlUpdateCart = $('.update_cart_url').data('url');
            let id = $(this).data('id');
            let quantity = $(this).parents('tr').find('input.cart_quantity_input').val();
            $.ajax({
                type: "GET",
                url: urlUpdateCart,
                data: {
                    id: id,
                    quantity: quantity
                },
                success: function(data) {
                    if (data.code === 200) {
                        $('.cart_wrapper').html(data.cart_component);
                        alert('Cập nhật giỏ hàng thành công!!!');
                    }
                },
                error: function() {

                }
            });
        }

        function cartDelete(event) {
            event.preventDefault();
            let urlDelete = $('.cart_info').data('url');
            let id = $(this).data('id');
            $.ajax({
                type: "GET",
                url: urlDelete,
                data: {
                    id: id
                },
                success: function(data) {
                    if (data.code === 200) {
                        $('.cart_wrapper').html(data.cart_component);
                        alert('Cập nhật giỏ hàng thành công!!!');
                    }
                },
                error: function() {

                }
            });
        }
        $(function() {
            $(document).on('click', '.cart_update', cartUpdate)
            $(document).on('click', '.cart_delete', cartDelete)
        })
    </script>
@endsection

@section('content')
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="{{ route('home.client') }}">Home</a></li>
                <li class="active">Shopping Cart</li>
            </ol>
        </div>
        @if (!empty($successMsg))
            <div class="alert alert-success"> {{ $successMsg }}</div>
        @endif
        <div class="cart_wrapper">
            @include('client.products.components.cart_component')
        </div>

    </div>
@endsection
