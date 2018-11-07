@extends("layout.main")
@section("content")
    <div class="col-sm-8 blog-main">
        <form class="form-horizontal" action="/user/{{\Auth::id()}}/setting" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
            <div class="form-group">
                <label class="col-sm-2 control-label" for="name">用户名:</label>
                <div class="col-sm-10">
                    <input class="form-control" name="name" id="name" type="text" value="{{$me->name}}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">头像:</label>
                <div class="col-sm-10" style="display: flex">
                    <label for="my-avatar" style="cursor: pointer;width: 200px">更换头像</label>
                    <input class="file-loading preview_input" id="my-avatar" type="file" value="用户名" style="display: none" name="avatar">
                    <img src={{$me->avatar}} alt="" class="img-rounded preview_img" style="width: 72px;height:72px;border-radius:50%;">
                </div>
            </div>
            <div class="btn-container" style="display: flex;justify-content: center">
                <button type="submit" class="btn btn-default">修改</button>
            </div>
            @include("layout.error")
        </form>
        <br>
    </div>
@endsection