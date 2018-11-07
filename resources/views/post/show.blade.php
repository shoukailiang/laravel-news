
@extends("layout.main")
@section("content")
<div class="col-sm-8 blog-main">
        <div class="blog-post">
            <div>
                <h2 class="blog-post-title">{{$post->title}}</h2>
                <p>
                    @can('update', $post)
                        编辑：
                        <a style="margin: auto;text-decoration: none"  href="/posts/{{$post->id}}/edit">
                            <span style="color: #ccc" class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                        </a>
                    @endcan
                        <br>
                    @can('delete', $post)
                        删除：
                        <a style="margin: auto"  href="/posts/{{$post->id}}/delete">
                            <span style="color: #ccc" class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                        </a>
                    @endcan
                </p>
            </div>
            <p class="blog-post-meta">{{$post->created_at->toFormattedDateString()}} by <a href="#">{{$post->user->name}}</a></p> {{--作者--}}
            <p> {!! $post->content !!}</p>
            <div>
                @if($post->zan(\Auth::id())->exists())
                    <a href="/posts/{{$post->id}}/unzan" type="button" class="btn btn-default btn-lg">取消赞</a>
                @else
                    <a href="/posts/{{$post->id}}/zan" type="button" class="btn btn-primary btn-lg">赞</a>
                @endif
            </div>
        </div>
        <div class="comment-list">
            <p> {{count($post->comments)==0?'暂无评论':''}}</p>
            @foreach($post->comments as $comment)
                <div class="item">
                    <div class="avatar">
                        <img src="{{$comment->user->avatar}}" alt="">
                    </div>
                    <div class="content">
                        <span>{{$comment->user->name}}</span>
                        <p>{{$comment->content}}</p>
                        <p class="time">{{$comment->created_at}}</p>
                    </div>
                </div>
            @endforeach
        </div>
        <div style="margin-bottom: 50px">
            <form action="/posts/{{$post->id}}/comment" method="post">
                {{csrf_field()}}
                {{--<input type="hidden" name="post_id" value="{{$post->id}}"/>--}}
                <textarea name="content" placeholder="请输入您的评论" class="form-control" rows="10"></textarea>
                <button class="btn btn-default" type="submit" style="margin-top: 20px;">提交</button>
            </form>
            @include("layout.error")
        </div>
    </div>
@endsection
