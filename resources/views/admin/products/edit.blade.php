@extends('layout-admin.main')

@section('head')
@endsection

@section('css')
    <link href="{{ asset('vendors/select2/select2.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('admin-docs/product/add/add.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('admin-docs/product/index/edit.css') }}">
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Sửa sản phẩm</h4>
            @if (Session::has('msg'))
                <div class="alert alert-success" role="alert">{{ Session::get('msg') }}</div>
            @endif
            <form action="{{ route('update.product.admin', ['id' => $product->id]) }}" method="POST"
                enctype="multipart/form-data">
                @csrf
                <div class="mb-3">
                    <label for="product" class="form-label">Tên sản phẩm</label>
                    <input type="text" name="name" value="{{ $product->name }}" class="form-control"
                        placeholder="Nhập tên sản phẩm">
                    @error('name')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label">Giá</label>
                    <input type="text" name="price" value="{{ $product->price }}" class="form-control">
                    @error('price')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="feature_image_path" class="form-label">Hình ảnh</label><br>
                    <input type="file" name="feature_image_path" class="form-control-file">

                    <div class="col-md-3 feature_image_container mt-3">
                        <div class="row">
                            <img class="feature_image" src="{{ $product->feature_image_path }}" alt="">
                        </div>
                    </div>

                </div>
                <div class="mb-3">
                    <label for="feature_image_path" class="form-label">Hình ảnh chi tiết</label><br>
                    <input type="file" name="image_path[]" class="form-control-file" multiple>
                    <div class="col-md-12 container_image_detail mt-3">
                        <div class="row">
                            @foreach ($product->productImages as $producImageItem)
                                <div class="col-md-3">
                                    <img class="image_detail_product" src="{{ $producImageItem->image_path }}"
                                        alt="">
                                </div>
                            @endforeach
                        </div>
                    </div>

                </div>
                <div class="mb-3">
                    <label for="category" class="form-label">Danh mục</label>
                    <select name="category_id" class="form-select select2_init" aria-label="Default select example">
                        <option selected value="">Chọn danh mục</option>
                        {!! $htmlOption !!}
                    </select>
                </div>
                <div class="mb-3">
                    <label for="">Nhập tags cho sản phẩm</label>
                    <select name="tags[]" class="form-control tag_select_choose" multiple="multiple">
                        @foreach ($product->tags as $tagItem)
                            <option value="{{ $tagItem->name }}" selected>{{ $tagItem->name }}</option>
                        @endforeach

                    </select>
                </div>
                <div class="mb-3">
                    <label for="content">Nội dung</label>
                    <textarea class="form-control" name="contents" id="content" rows="3">{{ $product->content }}</textarea>
                    @error('contents')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <button type="submit" class="btn btn-primary mt-3">Cập nhật sản phẩm</button>
            </form>
        </div>
    </div>
@endsection

@section('js')
    <script src="{{ asset('vendors/select2/select2.min.js') }}"></script>
    <script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
    <script src="{{ asset('admin-docs/product/add/add.js') }}"></script>
    <script>
        CKEDITOR.replace('content', options);
    </script>
@endsection

@section('footer')
@endsection
