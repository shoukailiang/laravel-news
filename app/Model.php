<?php

namespace App;

use Illuminate\Database\Eloquent\Model as BaseModel;
class Model extends BaseModel
{
    protected $guarded=[""]; // 不可以注入数据字段
//    protected $fillable=["title","content","user_id","fan_id","star_id","topic_id","post_id"];// 可以注入数据字段
}
