<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kemudi extends Model
{
    protected $table = 'kemudi';

    protected $fillable = array('id_type', 'steering_gear_type', 'radius_putar');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
