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
