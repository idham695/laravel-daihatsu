<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailMesin extends Model
{
    protected $table = "detail_mesin";

    protected $fillable = array('id_type', 'jumlah_silinder', 'katup_per_silinder', 'konfigurasi_katup'
                                ,'suplai_bahan_bakar', 'mesin');

    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
