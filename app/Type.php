<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    protected $table = 'type';

    protected $fillable = array('id_product','type','price','desc');


    public function product()
    {
        return $this->belongsTo(Product::class,'id_product');
    }
    public function down()
    {
        return $this->hasMany(Down_Payment::class,'id_type');
    }
    public function performance()
    {
        return $this->hasMany(Performance::class,'id_type');
    }
    public function detail()
    {
        return $this->hasMany(DetailMesin::class,'id_type');
    }
    public function capacity()
    {
        return $this->hasMany(Capacity::class,'id_type');
    }
    public function transmisi()
    {
        return $this->hasMany(Transmision::class,'id_type');
    }
    public function suspensi()
    {
        return $this->hasMany(Suspension::class,'id_type');
    }
    public function kemudi()
    {
        return $this->hasMany(Kemudi::class,'id_type');
    }
    public function velg()
    {
        return $this->hasMany(VelgBan::class,'id_type');
    }
}
