<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Eksterior extends Model
{
    protected $table = 'eksterior';

    protected $fillable = array('id_type', 'adjutableHeadlight', 'lampuKabutDepan', 'kacaSpionElektrik','kacaSpionLuarManual'
                                ,'wiperOtomatis','wiperKacaBelakang','coverVelg','velgAlloy','anthenaElektrik',
                                'spoilerBelakang','atapConvertible','roofRack','sunRoof','pijakanSamping','lampuSein','anthenaTerpadu'
                                ,'grilleKrom','roofRail','jenisRemBelakang','jenisRemDepan');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
