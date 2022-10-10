<div class="features_items">
    <!--features_items-->
    <h2 class="title text-center">Features Items</h2>
    @foreach ($products as $product)
        <div class="col-sm-3">
            <div class="product-image-wrapper">
                <div class="single-products">
                    <a href="{{ route('detail.product', ['id' => $product->id]) }}">
                        <div class="productinfo text-center">
                            <img src="{{ $product->feature_image_path }}" alt="" />
                            <h2>{{ number_format($product->price) }} VNĐ</h2>
                            <p>{{ $product->name }}</p>
                            <a href="#" data-url="{{ route('addToCart', ['id' => $product->id]) }}"
                                class="btn btn-default add_to_cart"><i class="fa fa-shopping-cart"></i>Add to
                                cart</a>
                        </div>
                    </a>

                </div>
                <div class="choose">
                    <ul class="nav nav-pills nav-justified">
                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a>
                        </li>
                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                    </ul>
                </div>
            </div>
        </div>
    @endforeach
</div>
