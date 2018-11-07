<?php

namespace App\Http\Controllers;

use App\Comment;
use Illuminate\Http\Request;
use App\Post;
use App\Zan;

class PostController extends Controller
{
    /*
     * 文章列表
     */
    public function index()
    {
//        $user = \Auth::user();
        // withCount("comments") 获取关联的comments数
        $posts = Post::aviable()->orderBy('created_at', 'desc')->withCount(["zans", "comments"])->with('user')->paginate(5);
        $postCommentsRank = Post::withCount('comments')->orderBy('comments_count', 'desc')->with('user')->take(10)->get();
        $hotZanPost = \App\Post::withCount("zans")->orderBy('zans_count', 'desc')->take(10)->get();
        return view('post/index',compact("posts","newPost","postCommentsRank","hotZanPost"));
    }

    public function imageUpload(Request $request)
    {
        $path = $request->file('wangEditorH5File')->storePublicly(md5(time()));
        echo asset('storage/' .$path);
    }

    public function create()
    {
        return view('post/create');
    }

    public function store(Request $request)
    {
        // 法一
//        $post  = new Post();
//        $post->title=request("title");
//        $post->content=request("content");
//        $post->save();

//      $params = ["title"=>request("title"),"content"=>request("content")];
//        $params =request(["title","content"]);
//        $post=Post::create($params);
        // dump 和 die
//        dd(request()->all());
//        return redirect("/posts");
        //dd($post);
        // 验证表单信息
         $this->validate(request(), [
            'title' => 'required|string|max:255|min:4',
            'content' => 'required|string|min:100',
        ]);
//        Post::create(request(['title', 'content']));
//        return redirect('/posts');
//        $this->validate($request, [
//            'title' => 'required|max:255|min:4',
//            'content' => 'required|min:100',
//        ]);
        $user_id = \Auth::id();
        $params = array_merge(request(['title', 'content']), compact("user_id"));
        Post::create($params);
        return redirect('/posts');


    }
    // 编辑
    public function edit(Post $post)
    {
        return view('post/edit',compact("post"));
    }
    // 删除
    public function delete(Post $post)
    {
        $this->authorize("delete",$post);
        $post->delete();
        return redirect('posts');
    }
    // 详情
    public function show(Post $post)
    {
        // 预加载，不然模板层会多一次查询（post->comments as $comment）
        $post->load("comments");
        return view('post/show',compact("post"));
    }
//
    public function update(Request $request, Post $post)
    {
        // 验证
        $this->validate($request, [
            'title' => 'required|max:255|min:4',
            'content' => 'required|min:100',
        ]);

        // 权限
        $this->authorize('update', $post);
        // 逻辑
        $post->update(request(['title', 'content']));
        return redirect("/posts/{$post->id}");
    }

    /*
     * 文章评论保存
     */
    public function comment(Post $post)
    {
        $this->validate(request(),[
//            'post_id' => 'required|exists:posts,id',
            'content' => 'required|min:10',
        ]);

        $comment = new Comment();
        $comment->user_id =\Auth::id();
        $comment->content =request( 'content');
        $post->comments()->save($comment);


        return back();
    }

    /*
     * 点赞
     */
    public function zan(Post $post)
    {
        $zan = new \App\Zan;
        $zan->user_id = \Auth::id();
        $post->zans()->save($zan);
        return back();
    }

    /*
     * 取消点赞
     */
    public function unzan(Post $post)
    {
        $post->zan(\Auth::id())->delete();
        return back();
    }

    /*
     * 搜索页面
     */
//    public function search()
//    {
//        $this->validate(request(),[
//            'query' => 'required'
//        ]);
//
//        $query = request('query');
//        $posts = Post::search(request('query'))->paginate(10);
//        return view('post/search', compact('posts', 'query'));
//    }
}
