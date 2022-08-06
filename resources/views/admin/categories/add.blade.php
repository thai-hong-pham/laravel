@extends('layout.main')
@section('head')
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Thêm danh mục</h4>
            <form action="{{ route('store.category.admin') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="category" class="form-label">Tên danh mục</label>
                    <input type="text" name="name" class="form-control" id="category" placeholder="Nhập tên danh mục">
                </div>

                <div class="mb-3">
                    <label for="category" class="form-label">Danh mục cha</label>
                    <select name="parent_id" class="form-select" aria-label="Default select example">
                        <option selected value="0">Chọn danh mục cha</option>
                        {!! $htmlOption !!}
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Tạo danh mục</button>
            </form>
        </div>
    </div>
@endsection

@section('footer')
@endsection
