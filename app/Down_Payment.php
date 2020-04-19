<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Down_Payment extends Model
{
    protected $table = "down_payment";

    protected $fillable = array('id_type','price_min','price_max');


    public $timestamps = true;

    public function type()
    {
        return $this->belongsTo(Type::class, 'id_type')->orderBy('id');
    }

    public function credit ()
    {
        return $this->hasMany(Credit::class,'id_down_payment')->orderBy('id');
    }
}
