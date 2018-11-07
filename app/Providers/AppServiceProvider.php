<?php

namespace App\Providers;

use function GuzzleHttp\Promise\all;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        Schema::defaultStringLength(191);
        //视图合成器
        \View::composer('layout.nav', function($view){
            $user = \Auth::user();
            $topics = \App\Topic::all();
            $view->with(['users'=>$user,'topics'=>$topics]);
        });

        \View::composer('layout.sidebar', function($view){
            $hotZanPost = \App\Post::withCount("zans")->orderBy('zans_count', 'desc')->take(10)->get();
            $first = \App\Topic::find(1)->posts;
            $second = \App\Topic::find(2)->posts;
            $third = \App\Topic::find(3)->posts;
            $forth = \App\Topic::find(4)->posts;
            $fifth = \App\Topic::find(5)->posts;
            $sixInternet = \App\Topic::find(6)->posts;
            $seven = \App\Topic::find(7)->posts;
            $eight = \App\Topic::find(8)->posts;

            $view->with([
                'hotZanPosts'=>$hotZanPost,
                'first'=>$first,
                'second'=>$second,
                'third'=>$third,
                'forth'=>$forth,
                'fifth'=>$fifth,
                'sixInternet'=>$sixInternet,
                'seven'=>$seven,
                'eight'=>$eight,
            ]);
        });
    }
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
