<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Type extends Model
{
    use SoftDeletes;
    
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
    public function eksterior()
    {
        return $this->hasMany(Eksterior::class,'id_type');
    }
    public function hiburan()
    {
        return $this->hasMany(Hiburan::class,'id_type');
    }
    public function lain()
    {
        return $this->hasMany(lainLain::class,'id_type');
    }
    public function kenyamanan()
    {
        return $this->hasMany(Kenyamanan::class,'id_type');
    }
    public function keselamatan()
    {
        return $this->hasMany(Keselamatan::class,'id_type');
    }
    public function keamanan()
    {
        return $this->hasMany(Keamanan::class,'id_type');
    }
}
