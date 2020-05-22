<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Performance extends Model
{
    protected $table = "performance";
    protected $fillable = array('id_type', 'machine_capacity', 'horse_power', 'torsi','konsumsiBBMKota','konsumsiBBMTol');

    public function type(){
        return $this->belongsTo(Type::class, 'id_type');
    }
}
