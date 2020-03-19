<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Plus_Product extends Model
{
    protected $table = "plus_product";
    protected $fillable = array('id_product', 'kelebihan');

    public function kelebihan(){
        return $this->belongsTo(Product::class, 'id_product');
    }
}
