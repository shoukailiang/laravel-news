<?php

namespace App\Admin\Controllers;

use App\Topic;
use Illuminate\Http\Request;

class NoticeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $notices = \App\Notice::all();
        return view('admin/notice/index', compact('notices'));
    }


    public function create()
    {
        return view('admin/notice/create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|min:3',
            'content' => 'required|min:3'
        ]);

        $notice = \App\Notice::create(request(['title', 'content']));

        // 分发逻辑
        dispatch(new \App\Jobs\SendMessage($notice));

        return redirect('/admin/notices');
    }
}
