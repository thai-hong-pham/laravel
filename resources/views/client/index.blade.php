@extends('layout-home.master')

@section('title')
    <title>Eshopper</title>
@endsection

@section('css')
    <link href="{{ asset('layout-home/home.css') }}" rel="stylesheet">
@endsection

@section('js')
    <link rel="stylesheet" href="{{ asset('layout-home/home.js') }}">
    <script>

        function addCart() {
            event.preventDefault();
            let urlCart = $(this).attr("data-url");
            $.ajax({
                type: "GET",
                url: urlCart,
                dataType: 'json',
                success: function(data){
                    if(data.code === 200){
                        alert('Thêm vào giỏ hàng thành công !!!')
                    }
                },
                error: function(data){
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
    @include('client.components.slider')


    <section>
        <div class="container">
            <div class="row">

                <!-- sidebar -->

                @include('components.sidebar')

                <!-- end sidebar -->

                <div class="col-sm-9 padding-right">

                    <!-- features_items -->

                    @include('client.components.feature_product')

                    <!--features_items-->


                    <!--category-tab-->

                    @include('client.components.category_tab')

                    <!--/category-tab-->


                    <!--recommended_items-->

                    @include('client.components.recommend_product')

                    <!--/recommended_items-->

                </div>
            </div>
        </div>
    </section>
@endsection


