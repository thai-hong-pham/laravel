<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Permission;
use App\Models\Role;
use Illuminate\Http\Request;

class AdminRoleController extends Controller
{

    private $role;
    public function __construct(Role $role, Permission $permission)
    {
        $this->role = $role;
        $this->permission = $permission;
    }

    public function index()
    {
        $roles = $this->role->paginate(10);
        return view('admin.roles.index', compact('roles'));
    }

    public function create()
    {
        $permissionsParent = $this->permission->where('parent_id', 0)->get();
        return view('admin.roles.add', compact('permissionsParent'));
    }

    public function store(Request $request)
    {
        $role = $this->role->create([
            'name' => $request->name,
            'display_name' => $request->display_name
        ]);
        $role->permissions()->attach($request->permission_id);
        return redirect()->route('index.role.admin');
    }

    public function edit($id)
    {
        $permissionsParent = $this->permission->where('parent_id', 0)->get();
        $role = $this->role->find($id);
        $permissionsChecked = $role->permissions;
        return view('admin.roles.edit', compact('permissionsParent', 'role', 'permissionsChecked'));
    }

    public function update(Request $request, $id)
    {
        $role = $this->role->find($id);
        $role->update([
            'name' => $request->name,
            'display_name' => $request->display_name
        ]);
        $role->permissions()->sync($request->permission_id);
        return redirect()->route('index.role.admin');
    }

    public function delete($id){
        $role = $this->role->find($id)->delete();
        return redirect()->route('index.role.admin');
    }
}
