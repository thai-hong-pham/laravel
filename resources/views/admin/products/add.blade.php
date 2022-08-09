@extends('layout.main')

@section('head')
@endsection

@section('css')
    <link href="{{ asset('vendors/select2/select2.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('admin-docs/product/add/add.css') }}" rel="stylesheet">
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Thêm sản phẩm</h4>
            <form action="{{ route('store.product.admin') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="mb-3">
                    <label for="product" class="form-label">Tên sản phẩm</label>
                    <input type="text" name="name" class="form-control" placeholder="Nhập tên sản phẩm">
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label">Giá</label>
                    <input type="text" name="price" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="feature_image_path" class="form-label">Hình ảnh</label><br>
                    <input type="file" name="feature_image_path" class="form-control-file">
                </div>
                <div class="mb-3">
                    <label for="feature_image_path" class="form-label">Hình ảnh chi tiết</label><br>
                    <input type="file" name="image_path[]" class="form-control-file" multiple>
                </div>
                <div class="mb-3">
                    <label for="category" class="form-label">Danh mục</label>
                    <select name="parent_id" class="form-select select2_init" aria-label="Default select example">
                        <option selected value="">Chọn danh mục</option>
                        {!! $htmlOption !!}
                    </select>
                </div>
                <div class="mb-3">
                    <label for="">Nhập tags cho sản phẩm</label>
                    <select name="tags[]" class="form-control tag_select_choose" multiple="multiple">

                    </select>
                </div>
                <div class="mb-3">
                    <label for="content">Nội dung</label>
                    <textarea class="form-control" name="content" id="content" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Tạo sản phẩm</button>
            </form>
        </div>
    </div>
@endsection

@section('js')
    <script src="{{ asset('vendors/select2/select2.min.js') }}"></script>
    <script src="{{ asset('admin-docs/product/add/add.js') }}"></script>
    <script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
    <script>
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
        };
    </script>
    <script>
        CKEDITOR.replace('content', options);
    </script>
@endsection

@section('footer')
@endsection
