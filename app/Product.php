<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'product';
    protected $fillable = array('name', 'price', 'image','min_price','max_price');


    // public function product(){
    //     return $this->hasMany('App/Type','id_product');
    // }
}
