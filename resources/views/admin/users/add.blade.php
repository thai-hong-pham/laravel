@extends('layout.main')

@section('head')
@endsection

@section('css')
    <link href="{{ asset('vendors/select2/select2.min.css') }}" rel="stylesheet" />
@endsection

@section('js')
    <script src="{{ asset('vendors/select2/select2.min.js') }}"></script>
    <script>
        $('.select2_init').select2({
            'placeholder': 'Chọn vai trò'
        })
    </script>
@endsection

@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">

            <h4 class="mb-4">Thêm mới User</h4>

            @if (Session::has('msg'))
                <div class="alert alert-success" role="alert">{{ Session::get('msg') }}</div>
            @endif

            <form action="{{ route('store.user.admin') }}" method="post" enctype="multipart/form-data">
                @csrf

                <div class="mt-3">
                    <label for="name" class="form-label">Tên User</label>
                    <input type="text" name="name" class="form-control" placeholder="Nhập tên User"
                        value="{{ old('name') }}">
                </div>
                @error('name')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror

                <div class="mt-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Nhập Email"
                        value="{{ old('email') }}">
                </div>
                @error('email')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror

                <div class="mt-3">
                    <label for="password">Pasword</label>
                    <input type="password" name="password" class="form-control">
                </div>
                @error('password')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror

                <div class="mt-3">
                    <label>Chọn vai trò</label>
                    <select name="role_id[]" class="form-control select2_init" multiple>
                        <option value=""></option>
                        @foreach ($roles as $role)
                            <option value="{{ $role->id }}">{{ $role->name }}</option>
                        @endforeach

                    </select>

                </div>
                <button type="submit" class="btn btn-primary mt-3">Thêm mới User</button>
            </form>
        </div>
    </div>
@endsection
