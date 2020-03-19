<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Minus_Product extends Model
{
    protected $table = "minus_product";
    protected $fillable = array('id_product', 'kekurangan');

    public function kekurangan(){
        return $this->belongsTo(Product::class, 'id_product');
    }
}
