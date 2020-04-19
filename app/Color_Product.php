<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Color_Product extends Model
{
    protected $table = "color_product";

    protected $fillable = array('id_product', 'image', 'color','color_name');


    public $timestamps = true;

    public function product()
    {
        return $this->belongsTo(Product::class,'id_product');
    }
}
