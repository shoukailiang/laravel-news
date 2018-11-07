<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\User;
class RegisterController extends Controller
{
    // 注册页面
    public function index()
    {
        return view('register/index');
    }
    // 注册行为
    public function register()
    {   // 验证
        $this->validate(request(),[
            'name' => 'required|min:3|unique:users,name',// users表里面的name唯一
            'email' => 'required|unique:users,email|email',
            'password' => 'required|min:5|confirmed',// 密码和确认密码一致
        ]);
        // 逻辑
        // 加密
        $password = bcrypt(request('password'));
        $name = request('name');
        $email = request('email');
        $user = User::create(compact('name', 'email', 'password'));
        return redirect('/login');
    }
}

