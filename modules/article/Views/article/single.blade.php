@extends('article::layouts.general')

@section('content')

<!--start l-main-->
<main class="l-main js-main">
    <div class="l-main-block"></div>
    <div class="single">
        <img id="single-image" src="" alt="" class="single-image">
        <div class="l-container u-clear">
            <h1 class="single-title" id="single-title"></h1>
            <time id="single-date" class="single-date" datetime="2016-9-16">16 SEP, 2016</time>
            <p id="single-content" class="single-desc">
        	<a href="{{baseurl()}}article"><div class="single-button">
                <div class="button">
					<p class="button-text">Top</p>
				</div>
            </div></a>
        </div>
    </div>
</main>
<!--end l-main-->

@endsection
