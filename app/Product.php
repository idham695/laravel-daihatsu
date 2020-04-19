<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'product';
    protected $fillable = array('name', 'price', 'image','min_price','max_price');


    public function type(){
        return $this->hasMany(Type::class,'id_product')->orderBy('id');
    }
    public function plus(){
        return $this->hasMany(Plus_Product::class,'id_product');
    }
    public function minus(){
        return $this->hasMany(Minus_Product::class,'id_product');
    }
    public function color(){
        return $this->hasMany(Color_Product::class,'id_product');
    }
    public function interior(){
        return $this->hasMany(Product_Image_Interior::class,'id_product');
    }
    public function image(){
        return $this->hasMany(Product_Image::class,'id_product');
    }
    public function eksterior(){
        return $this->hasMany(Product_Image_Eksterior::class,'id_product')->orderBy('id');
    }
}
