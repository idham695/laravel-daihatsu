<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    protected $table = 'type';

    protected $fillable = array('id_product','type','price','desc');


    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
