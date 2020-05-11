<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lainLain extends Model
{
    protected $table = 'lain_lain';

    protected $fillable = array('id_type', 'tachometer', 'electronicMultiTripmeter', 'jokDilapisiKulit','lapisanBerbahanKain'
                                ,'stirBerbalutKulit','temperaturUdaraLuar','odometerDigital','pengaturanKursiElektrik','tangkiBahanBakar',
                                'jenisLampuDepan','jamDigital');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
