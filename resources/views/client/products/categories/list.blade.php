@extends('layout-home.master')

@section('title')
    <title>Eshop|Home</title>
@endsection

@section('css')
    <link href="{{ asset('layout-home/home.css') }}" rel="stylesheet">
@endsection


@section('js')
    <link rel="stylesheet" href="{{ asset('layout-home/js.css') }}">
    <script>
        function addCart() {
            event.preventDefault();
            let urlCart = $(this).attr("data-url");
            $.ajax({
                type: "GET",
                url: urlCart,
                dataType: 'json',
                success: function(data) {
                    if (data.code === 200) {
                        alert('Thêm vào giỏ hàng thành công!!!!')
                    }
                },
                error: function(data) {
                    console.log(data);
                }
            })
        }
        $(function() {
            $('.add_to_cart').on('click', addCart);
        })
    </script>
@endsection

@section('content')
    <section>
        <div class="container">
            <div class="row">
                @include('components.sidebar')

                <div class="col-sm-9 padding-right">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Features Items</h2>


                        @foreach ($products as $product)
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <a href="{{ route('detail.product', ['id' => $product->id]) }}">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="{{ $product->feature_image_path }}" alt="" />
                                                <h2>{{ number_format($product->price) }} VND</h2>
                                                <p>{{ $product->name }}</p>
                                                <a href="#"
                                                    data-url="{{ route('addToCart', ['id' => $product->id]) }}"
                                                    class="btn btn-default add_to_cart"><i
                                                        class="fa fa-shopping-cart"></i>Add to cart</a>
                                            </div>

                                        </div>
                                    </a>
                                    <div class="choose">
                                        <ul class="nav nav-pills nav-justified">
                                            <li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                            <li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                        {{ $products->links() }}


                    </div>
                    <!--features_items-->
                </div>
            </div>
        </div>
    </section>
@endsection
