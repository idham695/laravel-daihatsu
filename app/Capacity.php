<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Capacity extends Model
{
    protected $table = "capacity";

    protected $fillable = array('id_type', 'kapasitas_tempat_duduk', 'kapasitas_tangki' ,'panjang', 'lebar', 'tinggi', 'ground_clerance', 
    'jarak_sumbu_roda', 'jarak_pijak_roda_depan', 'jarak_pijak_roda_belakang', 'jumlah_pintu', 'berat_bersih','berat_kotor');

    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
