<?php

namespace App;

use \App\Model;
use Illuminate\Database\Eloquent\Builder;

class Post extends Model
{

    protected $table = "posts";

    /*
     * 搜索的type
     */
//    public function searchableAs()
//    {
//        return 'posts_index';
//    }
//
//    public function toSearchableArray()
//    {
//        return [
//            'title' => $this->title,
//            'content' => $this->content,
//        ];
//    }


    /*
     * 所有评论
     */
    public function comments()
    {
        return $this->hasMany('\App\Comment')->orderBy('created_at', 'desc');
    }

    /*
     * 作者
     */
    public function user()
    {
        return $this->belongsTo(\App\User::class, 'user_id', 'id');
    }

    /*
     * 点赞
     */
    public function zans()
    {
        return $this->hasMany(\App\Zan::class)->orderBy('created_at', 'desc');
    }

    /*
     * 判断一个用户是否已经给这篇文章点赞了
     */
    public function zan($user_id)
    {
        return $this->hasOne(\App\Zan::class)->where('user_id', $user_id);
    }

    /*
     * 一篇文章有哪些主题
     */
    public function topics()
    {
        return $this->belongsToMany(\App\Topic::class, 'post_topics', 'post_id', 'topic_id')->withPivot(['topic_id', 'post_id']);
    }

    // 文章有很多postTopics
    public function postTopics()
    {
        return $this->hasMany(\App\PostTopic::class, 'post_id');
    }

    // 不属于某个专题的文章
    public function scopeTopicNotBy(Builder $query, $topic_id)
    {
        return $query->doesntHave('postTopics', 'and', function($q) use ($topic_id) {
            $q->where("topic_id", $topic_id);
        });
    }

    // 属于某个作者的文章
    public function scopeAuthorBy(Builder $query, $user_id)
    {
        return $query->where('user_id', $user_id);
    }

    /*
     * 可以显示的文章
     */
    public function scopeAviable($query)
    {
        return $query->whereIn('status', [0, 1]);
    }

    // 全局scope
    public static function boot()
    {
        parent::boot();
        static::addGlobalScope("available",function (Builder $builder){
            $builder->whereIn("status",[0,1]);
        });
    }

}
