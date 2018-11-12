
@extends("layout.main")
@section("content")
<div class="col-sm-8 blog-main">
    <div>
        <div id="carousel-example" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example" data-slide-to="1"></li>
                <li data-target="#carousel-example" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img src="http://pic-bucket.nosdn.127.net/photo/0025/2018-11-01/DVGS36IS0BGT0025NOS.jpg" alt="..." />
                    <div class="carousel-caption">...</div>
                </div>
                <div class="item">
                    <img src="http://pic-bucket.nosdn.127.net/photo/0025/2018-11-01/DVGS36IT0BGT0025NOS.jpg" alt="..." />
                    <div class="carousel-caption">...</div>
                </div>
                <div class="item">
                    <img src="http://pic-bucket.nosdn.127.net/photo/0025/2018-11-01/DVGS36IV0BGT0025NOS.jpg" alt="..." />
                    <div class="carousel-caption">...</div>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="right carousel-control" href="#carousel-example" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
    </div>
    <div style="height: 20px;">
    </div>
    <div>
        <h3>最新新闻：</h3>
        @foreach($posts as $post)
        <div class="blog-post">
            <h2 class="blog-post-title"><a href="/posts/{{$post->id}}" >{{$post->title}}</a></h2>
            <p class="blog-post-meta">{{$post->created_at->toFormattedDateString()}} by 
                <a class="name" href="/user/{{$post->user_id}}">{{$post->user->name}}</a>
            </p> {{--这边$post->又调用了post和user的关联关系，多查找一次，消耗性能，所以要加预加载--}}
            {!! str_limit($post->content,88, '...') !!}
            <div>主题分类：{{count($post->topics)!==0?$post->topics[0]->name:"暂无主题"}}</div>
            <p class="blog-post-meta">赞 {{$post->zans_count}}  | 评论 {{$post->comments_count}}</p>
            {{--withCount("comments")提供的--}}
        </div>
        @endforeach
        <div class="post-pagination">
            {{$posts->links()}}
        </div>
    </div>
    <div class="comment-heat" style="margin-bottom: 40px;">
        <h3>评论数热度</h3>
        <ul class="hot-ul">
            @foreach($postCommentsRank as $key => $post)
                <li>
                    @if($key<3)
                        <em style="color: #f34540;font-size: 26px;margin-top: -1px;">{{$key+1}}</em>
                    @else
                        <em>{{$key+1}}</em>
                    @endif
                    <a href="/posts/{{$post->id}}">
                        {{$post->title}}
                    </a>
                    <span>{{$post->comments_count}}</span>
                </li>
            @endforeach
        </ul>
    </div>
    <div class="comment-heat" style="margin-bottom: 40px;">
        <h3>点赞数热度</h3>
        <ul class="hot-ul">
            @foreach($hotZanPost as $key => $post)
                <li>
                    @if($key<3)
                        <em style="color: #f34540;font-size: 26px;margin-top: -1px;">{{$key+1}}</em>
                    @else
                        <em>{{$key+1}}</em>
                    @endif
                    <a href="/posts/{{$post->id}}">
                        {{$post->title}}
                    </a>
                    <span>{{$post->zans_count}}</span>
                </li>
            @endforeach
        </ul>
    </div>
</div>
@endsection