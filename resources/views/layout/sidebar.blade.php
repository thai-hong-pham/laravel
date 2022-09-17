<div class="sidebar pe-4 pb-3">
    <nav class="navbar bg-light navbar-light">
        <a href="" class="navbar-brand mx-4 mb-3">
            <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>Ebony Maw</h3>
        </a>
        <div class="d-flex align-items-center ms-4 mb-4">
            <div class="position-relative">
                <img class="rounded-circle" src="{{ asset('layout-admin/img/user.jpg') }}" alt="" style="width: 40px; height: 40px;">
                <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
            </div>
            <div class="ms-3">
                <h6 class="mb-0">Jhon Doe</h6>
                <span>Admin</span>
            </div>
        </div>
        <div class="navbar-nav w-100">
            <div class="nav-item">
                <a href="{{ route('index.category.admin') }}" class="nav-link"><i class="fa fa-list me-4"></i>Danh mục sản phẩm</a>
            </div>
            <div class="nav-item">
                <a href="{{ route('index.menu.admin') }}" class="nav-link"><i class="fa fa-list me-4"></i>Menus</a>
            </div>
            <div class="nav-item">
                <a href="{{ route('index.product.admin') }}" class="nav-link"><i class="fa fa-list me-4"></i>Product</a>
            </div>
            <div class="nav-item">
                <a href="{{ route('index.slider.admin') }}" class="nav-link"><i class="fa fa-list me-4"></i>Slider</a>
            </div>
            <div class="nav-item">
                <a href="{{ route('index.settings.admin') }}" class="nav-link"><i class="fa fa-list me-4"></i>Settings</a>
            </div>
            <div class="nav-item">
                <a href="{{ route('index.user.admin') }}" class="nav-link"><i class="fa fa-list me-4"></i>User</a>
            </div>
            <div class="nav-item">
                <a href="{{ route('index.role.admin') }}" class="nav-link"><i class="fa fa-list me-4"></i>Roles</a>
            </div>
        </div>
    </nav>
</div>
