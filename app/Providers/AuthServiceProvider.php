<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\User;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('category-list', function (User $user) {
            return $user->checkPermissionAccess(config('permissions.access.list-category'));
        });

        Gate::define('menu-list', function (User $user) {
            return $user->checkPermissionAccess(config('permissions.access.list-menu'));
        });
    }
}
