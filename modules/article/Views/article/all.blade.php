@extends('article::layouts.general')

@section('content')

<!--start l-contents-->
<div class="l-container u-clear">

    <!--start l-main-->
    <main class="l-main js-main">
        <div class="l-main-block"></div>
        <div class="archive">
            <ul class="archive-list" id="archive-list">                    
            </ul>
        </div>
        <a href="{{ baseurl() }}article/archive" class="archive-button">
            <div class="button">
				<p class="button-text">More</p>
			</div>
        </a>
    </main>
    <!--end l-main-->

</div>
<!--end l-contents-->

@endsection
