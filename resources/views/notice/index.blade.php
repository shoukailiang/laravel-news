@extends("layout.main")
@section("content")
    <div class="col-sm-8 blog-main">
        <h2>通知列表</h2>
        @foreach($notices as $notice)
            <div class="blog-post">
                <p class="blog-post-meta">
                    <b>通知标题</b>
                    {{$notice->title}}
                </p>
                <p>
                    <b>通知内容</b>
                    {{$notice->content}}
                </p>
            </div>
        @endforeach
    </div><!-- /.blog-main -->


@endsection