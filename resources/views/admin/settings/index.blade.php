
@extends('layout-admin.main')
@section('content')
    <div class="col-12">
        <div class="bg-light rounded h-100 p-4">
            <h4>Settings</h4>
            <div class="table-reponsive">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Config key</th>
                                <th scope="col">Config value</th>
                                <th scope="col">

                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button"
                                            id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                            Add setting
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li><a class="dropdown-item"
                                                    href="{{ route('add.settings.admin') . '?type=Text' }}">Text</a></li>
                                            <li><a class="dropdown-item"
                                                    href="{{ route('add.settings.admin') . '?type=Textarea' }}">Textarea</a>
                                            </li>
                                        </ul>
                                    </div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>

                            @foreach ($settings as $value)
                                <tr>
                                    <td>{{ $value->id }}</td>
                                    <td>{{ $value->config_key }}</td>
                                    <td> {{ $value->config_value }} </td>
                                    <td><a href="{{ route('edit.settings.admin', ['id' => $value->id]) . '?type=' . $value->type }}"
                                            class="btn btn-primary">Edit</a>
                                        <a href="{{ route('delete.settings.admin', ['id' => $value->id]) }}" onclick="confirm('Do you wanna delete it ?')" class="btn btn-danger">Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="col-md-12">
                        {{ $settings->links() }}
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
