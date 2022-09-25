@extends('layout.main')
@section('head')
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">
            <h4 class="mb-4">Thêm Permissions</h4>
            <form action="{{ route('store.permission.admin') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="category" class="form-label">Chọn Module</label>
                    <select name="module_parent" class="form-select">
                        <option value="">Chọn Module</option>
                        @foreach (config('permissions.table_module') as $moduleItem)
                            <option value="{{ $moduleItem }}">{{ $moduleItem }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group mb-3">
                    <div class="row">
                        @foreach (config('permissions.module_childrent') as $moduleItemChildrent)
                        <div class="col-3">
                            <label for="">
                                <input type="checkbox" name="module_childrent[]" value="{{ $moduleItemChildrent }}">
                                {{ $moduleItemChildrent }}
                            </label>
                        </div>
                        @endforeach

                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Tạo Permissions</button>
            </form>
        </div>
    </div>
@endsection

@section('footer')
@endsection
