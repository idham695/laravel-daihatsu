<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kenyamanan extends Model
{
    protected $table = 'kenyamanan';

    protected $fillable = array('id_type', 'AC', 'powerWindow', 'powerSteering','pemanas', 'gloveBox'
                                ,'engineStart','adjustableSheet','kursiHeaterDepan','kursiHeaterBelakang'
                                ,'spionLipat','followMeHomeHeadLamps','steeringWheel','lingkarKemudi'
                                ,'cruiseControl','kursiLipatBelakang','pembukaBagasi','lampuPengingat'
                                ,'headrestKursi','armRest','cupHolder','lumbarSupport','bottleHolder',
                                'lampuBagasi','mejaLipatBelakang','armRest');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
