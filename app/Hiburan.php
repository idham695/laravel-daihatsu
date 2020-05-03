<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hiburan extends Model
{
    protected $table = 'hiburan';

    protected $fillable = array('id_type', 'layarSentuh', 'sistemNavigasi', 'sambunganBluetooth','pemutarCD'
                                ,'soketUSB','pemutarDVD','speakerDepan','speakerBelakang','audio2DIN',
                                'perintahSuara');

    
    public function type(){
        return $this->belongsTo(Type::class,'id_type');
    }
}
