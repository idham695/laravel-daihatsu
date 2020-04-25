<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transmision extends Model
{
    protected $table = "transmisi";

    protected $fillable = array('id_type', 'girbox', 'penggerak', 'transmisi');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
