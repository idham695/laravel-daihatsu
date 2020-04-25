<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Capacity extends Model
{
    protected $table = "capacity";

    protected $fillable = array('id_type', 'kapasistas_tempat_duduk', 'panjang', 'lebar', 'tinggi', 'groud_clerance', 
    'jarak_sumbu_roda', 'jarak_pijak_roda_depan', 'jarak_pijak_roda_belakang', 'jumlah_pintu', 'berat_bersih');

    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
