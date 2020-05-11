<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKeselamatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keselamatan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_type')->unsigned();
            $table->foreign('id_type')->references('id')->on('type')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->enum('airbagDepan',['Ya','Tidak'])->nullable();
            $table->enum('airbagBelakang',['Ya','Tidak'])->nullable();
            $table->enum('airbagSamping',['Ya','Tidak'])->nullable();
            $table->enum('childSafety',['Ya','Tidak'])->nullable();
            $table->enum('kantongUdara',['Ya','Tidak'])->nullable();
            $table->enum('vehicleStability',['Ya','Tidak'])->nullable();
            $table->enum('sabukPengaman',['Ya','Tidak'])->nullable();
            $table->enum('pengingatPengamanBelakang',['Ya','Tidak'])->nullable();
            $table->enum('kameraBelakang',['Ya','Tidak'])->nullable();
            $table->enum('sensorParkir',['Ya','Tidak'])->nullable();
            $table->enum('engineCheck',['Ya','Tidak'])->nullable();
            $table->enum('pengukurTekanan',['Ya','Tidak'])->nullable();
            $table->enum('pelindungBenturanDepan',['Ya','Tidak'])->nullable();
            $table->enum('pelindungBenturanSamping',['Ya','Tidak'])->nullable();
            $table->enum('pengingatPintu',['Ya','Tidak'])->nullable();
            $table->enum('kontrolTraksi',['Ya','Tidak'])->nullable();
            $table->enum('antiLockBracking',['Ya','Tidak'])->nullable();
            $table->enum('brakeAssist',['Ya','Tidak'])->nullable();
            $table->enum('EBD',['Ya','Tidak'])->nullable();
            $table->enum('crashSensor',['Ya','Tidak'])->nullable();
            $table->enum('sabukPengamanDepan',['Ya','Tidak'])->nullable();
            $table->enum('spionTengahLipat',['Ya','Tidak'])->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('keselamatan');
    }
}
