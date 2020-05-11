<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keamanan extends Model
{
    protected $table = 'keamanan';

    protected $fillable = array('id_type', 'smartAccess', 'powerDoorLocks', 'antiTheftDevice','alarmMobil','centralLocking','engineImmobilizer');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
