<?php

namespace App;

use \App\Model;

class Topic extends Model
{
    /*
    * 属于这个主题的所有文章
    */
    public function posts()
    {
        // 专题和文章通过post_topics进行关联
        return $this->belongsToMany(\App\Post::class, 'post_topics', 'topic_id', 'post_id');
    }
//    // 专题的文章数，用户withcount
//    public function postTopics(){
//        $this->hasMany(\App\PostTopic::class,"topic_id");
//    }
}
