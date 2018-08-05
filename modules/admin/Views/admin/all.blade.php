@extends('admin::layouts.general')

@section('content')

    <!--start l-contents-->
    <div class="l-container u-clear">

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
            <a href="{{baseurl()}}admin/article/add" class="l-main-button">
                <div class="button">
    <p class="button-text">New Article</p>
</div>
            </a>
            <ul class="archive archive-admin">
            </ul>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->

@endsection
