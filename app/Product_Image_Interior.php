<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product_Image_Interior extends Model
{
    protected $table = "product_image__interior";

    protected $fillable = array('id_product', 'image');


    public $timestamps = true;

    public function product()
    {
        return $this->belongsTo(Product::class, 'id_product');
    }
}
