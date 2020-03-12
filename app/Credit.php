<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Credit extends Model
{
    protected $table = "credit";

    protected $fillable = array('id_type','price','tenor');


    public $timestamps = true;

    public function down_payment()
    {
        return $this->belongsTo(Down_Payment::class);
    }
}
