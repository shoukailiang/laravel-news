<div id="sidebar" class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
    <div class="hot">
        {{--<div class="head">--}}
            {{--<a class="title">热点排行</a>--}}
        {{--</div>--}}
        {{--<div class="img">--}}
            {{--<img src="/image/hot.jpeg" alt="">--}}
        {{--</div>--}}
        {{--<ul class="hot-ul">--}}
            {{--@foreach($hotZanPosts as $post)--}}
                {{--<li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>--}}
            {{--@endforeach--}}
        {{--</ul>--}}
    </div>
    <div class="travel">
        <div class="head">
            <a class="title">体育热点</a>
        </div>
        <div class="img">
            <img src="/image/travel.jpeg" alt="">
        </div>
        <ul class="hot-ul">
            @foreach($first as $post)
                <li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="travel">
        <div class="head">
            <a class="title">娱乐热点</a>
        </div>
        <div class="img">
            <img src="/image/internation.jpeg" alt="">
        </div>
        <ul class="hot-ul">
            @foreach($second as $post)
                <li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="travel">
        <div class="head">
            <a class="title">国内热点</a>
        </div>
        <div class="img">
            <img src="/image/domestic.jpeg" alt="">
        </div>
        <ul class="hot-ul">
            @foreach($third as $post)
                <li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="travel">
        <div class="head">
            <a class="title">国际热点</a>
        </div>
        <div class="img">
            <img src="/image/military.jpg" alt="">
        </div>
        <ul class="hot-ul">
            @foreach($forth as $post)
                <li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="travel">
        <div class="head">
            <a class="title">财经热点</a>
        </div>
        <div class="img">
            <img src="/image/caijing.jpeg" alt="">
        </div>
        <ul class="hot-ul">
            @foreach($fifth as $post)
                <li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="travel">
        <div class="head">
            <a class="title">互联网热点</a>
        </div>
        <div class="img">
            <img src="/image/internet.jpeg" alt="">
        </div>
        <ul class="hot-ul">
            @foreach($sixInternet as $post)
                <li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="travel">
        <div class="head">
            <a class="title">健康热点</a>
        </div>
        <div class="img">
            <img src="/image/yule.jpeg" alt="">
        </div>
        <ul class="hot-ul">
            @foreach($seven as $post)
                <li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="travel">
        <div class="head">
            <a class="title">教育热点</a>
        </div>
        <div class="img">
            <img src="/image/health.jpg" alt="">
        </div>
        <ul class="hot-ul">
            @foreach($eight as $post)
                <li><a href="/posts/{{$post->id}}">{{$post->title}}</a></li>
            @endforeach
        </ul>
    </div>
</div>