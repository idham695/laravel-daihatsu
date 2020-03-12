<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product_Image_Interiror extends Model
{
    protected $table = "product_image_interior";

    protected $fillable = array('id_product', 'image');


    public $timestamps = true;

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
