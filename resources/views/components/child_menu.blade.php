@if ($categoryParent->categoryChildrent->count())
    <ul role="menu" class="sub-menu">
        @foreach ($categoryParent->categoryChildrent as $categoryChild)
            <li>
                <a href="{{"category/". $categoryChild->slug ."/". $categoryChild->id }}">{{ $categoryChild->name }}</a>
                @if ($categoryChild->categoryChildrent->count())
                    @include('components.child_menu', ['categoryParent' => $categoryChild])
                @endif
            </li>
        @endforeach
    </ul>
@endif
