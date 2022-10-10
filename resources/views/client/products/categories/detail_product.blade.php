@extends('layout-home.master')

@section('js')
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
    <div class="container">
        <div class="row">
            @include('components.sidebar')


            <div class="col-sm-9 padding-right">
                <div class="product-details">
                    <div class="col-sm-5">
                        <div class="view-product">
                            <img src="{{ $productDetail->feature_image_path }}" alt="" />
                        </div>
                        <div id="" class="col-md-7">
                            <div class="image-arr">
                                @foreach ($productDetail->images as $key => $item)
                                    <img class="image-product-detail" src="{{ $item->image_path }}" alt="">
                                @endforeach
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-7">
                        <h2 class="title-pro">Thông tin sản phẩm</h2>
                        <div class="product-information">
                            <!--/product-information-->

                            <h2>{{ $productDetail->name }}</h2>
                            <p>
                                {{ $productDetail->content }}
                            </p>
                            <span>
                                <span>{{ number_format($productDetail->price) }} VNĐ</span>
                                <button type="button" class="btn btn-primary cart">
                                    <a href="" style="color: #FFFFFF" class="add_to_cart"
                                        data-url="{{ route('addToCart', ['id' => $productDetail->id]) }}"><i
                                            class="fa fa-shopping-cart"></i>Add to cart</a>

                                </button>
                            </span>
                            <p><b>Brand: </b>{{ $productDetail->category->name }}</p>

                        </div>
                        <!--/product-information-->
                    </div>
                </div>
                <!--/product-details-->



            </div>


        </div>
    </div>
@endsection
