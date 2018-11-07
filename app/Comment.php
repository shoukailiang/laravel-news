<?php

namespace App;

use App\Model;

class Comment extends Model
{

    public function post()
    {
        // 反向 一对多
        return $this->belongsTo('\App\Post', 'post_id', 'id');
    }
    // 评论所属用户
    public function user()
    {
        return $this->belongsTo('\App\User', 'user_id', 'id');
    }
}
