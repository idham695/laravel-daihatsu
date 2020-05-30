<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product_Image extends Model
{
    protected $table = "product_image";

    protected $fillable = array('id_product','image','name','extension');

    public $timestamps = true;

    public function product()
    {
        return $this->belongsTo(Product::class, 'id_product');
    }
    
    
}
