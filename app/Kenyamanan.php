<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kenyamanan extends Model
{
    protected $table = 'kenyamanan';

    protected $fillable = array('id_type', 'AC', 'powerWindowDepan','powerWindowBelakang', 'powerSteering'
                                ,'pemanas', 'gloveBox','automaticClimate','airQuality','ventilasiAC'
                                ,'engineStart','adjustableSheet','kursiHeaterDepan','kursiHeaterBelakang','kursiPengemudi'
                                ,'spionLipat','followMeHomeHeadLamps','steeringWheel','lingkarKemudi'
                                ,'cruiseControl','kursiLipatBelakang','pembukaBagasi','lampuPengingat'
                                ,'headrestKursi','armRest','cupHolderDepan','cupHolderBelakang','lumbarSupport','bottleHolder',
                                'lampuBagasi','mejaLipatBelakang','armRestTengah','onBoardComputer','spionLipat',
                                'automaticHeadLamps','powerOutlet','lampuBaca','vanityMirror','keylessEntry','fiturTambahan');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
