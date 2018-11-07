<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', "\App\Http\Controllers\LoginController@index");

Route::group(['middleware' => 'auth:web'], function(){
    // 文章列表
    Route::get('/posts', '\App\Http\Controllers\PostController@index');
    Route::get('/posts/create', '\App\Http\Controllers\PostController@create');
    Route::post('/posts', '\App\Http\Controllers\PostController@store');
    Route::get('/posts/search', '\App\Http\Controllers\PostController@search');
    // 文章详情
    Route::get('/posts/{post}', '\App\Http\Controllers\PostController@show');

    Route::get('/posts/{post}/edit', '\App\Http\Controllers\PostController@edit');
    Route::get('/posts/{post}/delete', '\App\Http\Controllers\PostController@delete');
    Route::put('/posts/{post}', '\App\Http\Controllers\PostController@update');
    // 图片上传
    Route::post('/posts/img/upload', '\App\Http\Controllers\PostController@imageUpload');

    Route::post('/posts/{post}/comment', '\App\Http\Controllers\PostController@comment');
    Route::get('/posts/{post}/zan', '\App\Http\Controllers\PostController@zan');
    Route::get('/posts/{post}/unzan', '\App\Http\Controllers\PostController@unzan');

    // 个人主页
    Route::get('/user/{user}', '\App\Http\Controllers\UserController@show');
    Route::post('/user/{user}/fan', '\App\Http\Controllers\UserController@fan');
    Route::post('/user/{user}/unfan', '\App\Http\Controllers\UserController@unfan');

    // 个人设置
    Route::get('/user/me/setting', '\App\Http\Controllers\UserController@setting');
    // 个人设置操作
    Route::post('/user/{user}/setting', '\App\Http\Controllers\UserController@settingStore');

    // 专题
    Route::get('/topic/{topic}', '\App\Http\Controllers\TopicController@show');
    Route::get('/topic/{topic}/submit', '\App\Http\Controllers\TopicController@submit');

    // 通知
    Route::get('/notices', '\App\Http\Controllers\NoticeController@index');
});

Route::get('/login', "\App\Http\Controllers\LoginController@index")->name('login');
Route::post('/login', "\App\Http\Controllers\LoginController@login");
Route::get('/logout', "\App\Http\Controllers\LoginController@logout");
//注册页面
Route::get('/register', "\App\Http\Controllers\RegisterController@index");
// 注册行为
Route::post('/register', "\App\Http\Controllers\RegisterController@register");
//后台路由
include_once("admin.php");