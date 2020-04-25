<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    protected $table = 'type';

    protected $fillable = array('id_product','type','price','desc');


    public function product()
    {
        return $this->belongsTo(Product::class,'id_product');
    }
    public function down()
    {
        return $this->hasMany(Down_Payment::class,'id_type');
    }
    public function performance()
    {
        return $this->hasMany(Performance::class,'id_type');
    }
}
