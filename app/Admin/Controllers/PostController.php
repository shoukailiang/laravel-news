<?php

namespace App\Admin\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        // status = 0, 为未审核
        $posts = \App\Post::withoutGlobalScope('available')
            ->where('status', 0)->orderByDesc('created_at')->paginate(10);
        return view('/admin/post/index', compact('posts'));
    }

    /*
     * 修改文章的状态
     */
    public function status(\App\Post $post)
    {
        $this->validate(request(), [
            "status" => 'required|in:-1,1',
        ]);

        $post->status = request('status');
        $post->save();
        return [
            'error' => 0,
            'msg' => ''
        ];
    }

}
