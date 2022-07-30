@extends('layout.main')
@section('head')
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Thêm Menu</h4>
            <form action="{{ route('store.menu') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="category" class="form-label">Tên menu</label>
                    <input type="text" name="name" class="form-control" id="category" placeholder="Nhập tên menu">
                </div>

                <div class="mb-3">
                    <label for="category" class="form-label">Menu cha</label>
                    <select name="parent_id" class="form-select" aria-label="Default select example">
                        <option selected value="0">Chọn menu cha</option>
                        {!! $optionSelect !!}
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Tạo menu</button>
            </form>
        </div>
    </div>
@endsection

@section('footer')
@endsection
