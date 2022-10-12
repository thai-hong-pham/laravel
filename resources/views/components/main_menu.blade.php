<div class="mainmenu pull-left">
    <ul class="nav navbar-nav collapse navbar-collapse">
        <li><a href="{{ route('home.client') }}" class="active">Home</a></li>

        @foreach ($categoriesLimit as $categoryParent)
            <li class="dropdown"><a href="#">{{ $categoryParent->name }}<i class="fa fa-angle-down"></i></a>

                @include('components.child_menu',['categoryParent' => $categoryParent])

            </li>
        @endforeach

        <li><a href="#">Contact</a></li>
    </ul>
</div>
