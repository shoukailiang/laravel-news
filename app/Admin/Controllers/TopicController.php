<?php

namespace App\Admin\Controllers;

use App\Topic;
use Illuminate\Http\Request;

class TopicController extends Controller
{

    public function index()
    {
        $topics = \App\Topic::all();
        return view('admin/topic/index', compact('topics'));
    }

 
    public function create()
    {
        return view('admin/topic/create');
    }

    
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:3'
        ]);

        \App\Topic::create(request(['name']));
        return redirect('/admin/topics');
    }

    public function show(Topic $topic)
    {
        return view('admin/topic/show', compact('topic'));
    }

    
    public function edit(Topic $topic)
    {
        //
    }

    
    public function update(Request $request, Topic $topic)
    {
        //
    }


    public function destroy(Topic $topic)
    {
        $topic->delete();
        return [
            'error' => 0,
            'msg' => '',
        ];
    }
}
