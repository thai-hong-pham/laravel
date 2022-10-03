<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    @yield('title')
    <link href="{{ asset('layout-home/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('layout-home/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('layout-home/css/prettyPhoto.css') }}" rel="stylesheet">
    <link href="{{ asset('layout-home/css/price-range.css') }}" rel="stylesheet">
    <link href="{{ asset('layout-home/css/animate.css') }}" rel="stylesheet">
    <link href="{{ asset('layout-home/css/main.css') }}" rel="stylesheet">
    @yield('css')
</head>


<body>

@include('components.header')

    @yield('content')

@include('components.footer')

    <script src="{{ asset('layout-home/js/jquery.js') }}"></script>
    <script src="{{ asset('layout-home/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('layout-home/js/jquery.scrollUp.min.js') }}"></script>
    <script src="{{ asset('layout-home/js/price-range.js') }}"></script>
    <script src="{{ asset('layout-home/js/jquery.prettyPhoto.js') }}"></script>
    <script src="{{ asset('layout-home/js/main.js') }}"></script>


    @yield('js')
</body>

</html>
