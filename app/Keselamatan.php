<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keselamatan extends Model
{
    protected $table = 'keselamatan';

    protected $fillable = array('id_type', 'airbagDepan', 'airbagBelakang', 'childSafety','kantongUdara', 'airbagSamping'
                                ,'vehicleStability','sabukPengaman','pengingatPengaman','kameraBelakang'
                                ,'spionLipat','followMeHomeHeadLamps','steeringWheel','lingkarKemudi'
                                ,'sensorParkir','engineCheck','pengukurTekanan','pelindungBenturan'
                                ,'pengingatPintu','kontrolTraksi');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
