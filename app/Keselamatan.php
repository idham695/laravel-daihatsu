<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keselamatan extends Model
{
    protected $table = 'keselamatan';

    protected $fillable = array('id_type', 'airbagDepan', 'airbagBelakang', 'childSafety','kantongUdara', 'airbagSamping'
                                ,'vehicleStability','sabukPengaman','pengingatPengamanBelakang','kameraBelakang'
                                ,'sensorParkir','engineCheck','pengukurTekanan','pelindungBenturanDepan','pelindungBenturanSamping'
                                ,'pengingatPintu','kontrolTraksi','antiLockBracking','brakeAssist','EBD','crashSensor','sabukPengamanDepan','spionTengahLipat');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
