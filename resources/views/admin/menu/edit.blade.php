@extends('layout.main')
@section('head')
<script src="/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">
            <form action="" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="menu" class="form-label">Tên danh mục</label>
                    <input type="text" value="{{ $menu->name }}" name="name" class="form-control" id="menu" placeholder="Nhập tên danh mục">
                </div>
                
                <div class="mb-3">
                    <label for="menu" class="form-label">Mô tả ngắn</label>
                    <input type="text" value="{{ $menu->description }}" name="description" class="form-control" id="description" placeholder="Nhập mô tả ngắn">
                </div>
                <div class="mb-3">
                    <label for="menu" class="form-label">Mô tả chi tiết</label>
                    <textarea type="text" value="{{ $menu->content }}" name="content" class="form-control" id="content" placeholder="Nhập nội dung"></textarea>
                </div>
                
                <button type="submit" class="btn btn-primary">Sửa danh mục</button>
            </form>
        </div>
    </div>
@endsection

@section('footer')
<script>
    CKEDITOR.replace('content');
</script>
@endsection
