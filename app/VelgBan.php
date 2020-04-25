<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VelgBan extends Model
{
    
    protected $table = "velg_ban";

    protected $fillable = array('id_type', 'ukuran', 'jenis', 'ukuran_velg');

    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
