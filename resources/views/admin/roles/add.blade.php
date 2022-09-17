@extends('layout.main')

@section('head')
@endsection
@section('content')
    <div class="col-sm-12  justify-content">
        <div class="bg-light rounded h-100 p-4">

            <h4 class="mb-4">Thêm Vai trò</h4>

            @if (Session::has('msg'))
                <div class="alert alert-success" role="alert">{{ Session::get('msg') }}</div>
            @endif

            <form action="{{ route('create.role.admin') }}" method="post" enctype="multipart/form-data">
                @csrf

                <div class="mt-3">
                    <label for="name" class="form-label">Tên vai trò</label>
                    <input type="text" name="name" class="form-control" placeholder="Nhập tên vai trò"
                        value="{{ old('name') }}">
                </div>
                @error('name')
                    <span class="text-danger"><strong>{{ $message }}</strong></span>
                @enderror

                <div class="mt-3">
                    <label for="content">Mô tả vai trò</label>
                    <textarea class="form-control" name="display_name" id="content" rows="3">{{ old('display_name') }}</textarea>
                    @error('description')
                        <span class="text-danger"><strong>{{ $message }}</strong></span>
                    @enderror
                </div>

                @foreach ($permissionsParent as $permissionsParentItem)
                    <div class="card border-primary mt-3">
                        <div class="card-header" style="background-color: #6699FF;color:aliceblue">
                            <label>
                                <input type="checkbox" value="">
                            </label>
                            Module {{ $permissionsParentItem->name }}
                        </div>
                        <div class="row">
                            @foreach ($permissionsParentItem->PermissionChildrent as $permissionsChildrentItem)
                            <div class="card-body text-primary col-md-3">
                                <h5 class="card-title">
                                    <label>
                                        <input type="checkbox" value="{{ $permissionsChildrentItem->id }}">
                                    </label>
                                    {{ $permissionsChildrentItem->name }}
                                </h5>
                            </div>
                            @endforeach
                        </div>
                    </div>
                @endforeach

        </div>
    </div>

    <button type="submit" class="btn btn-primary mt-3">Tạo vai trò</button>
    </form>
    </div>
    </div>
@endsection


@section('footer')
@endsection
