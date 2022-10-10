<div class="recommended_items">
    <h2 class="title text-center">recommended items</h2>

    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">

            @foreach ($recommendProducts as $keyRecommend => $recommendProductItem)
                @if ($keyRecommend % 3 == 0)
                    <div class="item {{ $keyRecommend == 0 ? 'active' : '' }}">
                @endif

                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="{{ asset($recommendProductItem->feature_image_path) }}" alt="" />
                                <h2>{{ number_format($recommendProductItem->price) }} VNĐ</h2>
                                <p>{{ $recommendProductItem->name }}</p>
                                <a href="#"
                                    data-url="{{ route('addToCart', ['id' => $recommendProductItem->id]) }}"
                                    class="btn btn-default add_to_cart"><i class="fa fa-shopping-cart"></i>Add to
                                    cart</a>
                            </div>

                        </div>
                    </div>
                </div>

                @if ($keyRecommend % 3 == 2)
        </div>
        @endif
        @endforeach

    </div>
    <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
        <i class="fa fa-angle-left"></i>
    </a>
    <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
        <i class="fa fa-angle-right"></i>
    </a>
</div>
</div>
