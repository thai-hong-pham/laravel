<div class="category-tab">

    <div class="col-sm-12">
        <ul class="nav nav-tabs">
            @foreach ($categories as $indexCategory => $category)
                <li class="{{ $indexCategory == 0 ? 'active' : '' }}">
                    <a href="#category_tab_{{ $category->id }}" data-toggle="tab">{{ $category->name }}</a>
                </li>
            @endforeach
        </ul>
    </div>

    <div class="tab-content">
        @foreach ($categories as $indexCategoryProduct => $ItemProductTab)
                <div class="tab-pane fade {{ $indexCategoryProduct == 0 ? 'active in' : '' }}"
                    id="category_tab_{{ $ItemProductTab->id }}">
                    @foreach ($ItemProductTab->products as $productItem)
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="{{ $productItem->feature_image_path }}" alt="" />
                                        <h2>{{ $productItem->name }}</h2>
                                        <a href="#"
                                            data-url="{{ route('addToCart', ['id' => $productItem->id]) }}"
                                            class="btn btn-default add_to_cart"><i class="fa fa-shopping-cart"></i>Add
                                            to
                                            cart</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
        @endforeach


    </div>
</div>
