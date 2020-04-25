<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Suspension extends Model
{
    protected $table = "suspensi";

    protected $fillable = array('id_type', 'suspensi_depan', 'suspensi_belakang');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
