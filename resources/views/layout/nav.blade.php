<div class="logo">
    <div class="container">
        <h1>
            <a href="https://news.163.com/">网易新闻有态度</a>
        </h1>
    </div>
</div>
<div class="blog-masthead">
    <div class="container">
        <ul class="nav navbar-nav navbar-left">
            <li>
                <a class="blog-nav-item " href="/posts">首页</a>
            </li>
            @foreach($topics as $topic)
                <li>
                    <a href="/topic/{{$topic->id}}" style="color: black">
                        {{$topic->name}}
                    </a>
                </li>
            @endforeach
            {{--<li>--}}
                {{--<a class="blog-nav-item" href="/posts/create">写文章</a>--}}
            {{--</li>--}}
            {{--<li>--}}
                {{--<a class="blog-nav-item" href="/notices">通知</a>--}}
            {{--</li>--}}
            {{--这是搜索-------}}
            {{--<li>--}}
                {{--<input name="query" type="text" value="" class="form-control" style="margin-top:10px" placeholder="搜索词">--}}
            {{--</li>--}}
            {{--<li>--}}
                {{--<button class="btn btn-default" style="margin-top:10px" type="submit">Go!</button>--}}
            {{--</li>--}}
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <div>
                    <a href="#" class="blog-nav-item dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <img src={{\Auth::user()->avatar}} alt="" class="img-rounded" style="border-radius:500px; height: 30px">
                        {{isset(\Auth::user()->name)?\Auth::user()->name:""}}
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/user/{{\Auth::id()}}">我的主页</a></li>
                        <li><a href="/posts/create">写文章</a></li>
                        <li><a href="/notices">通知</a></li>
                        <li><a href="/user/me/setting">个人设置</a></li>
                        <li><a href="/logout">登出</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</div>
