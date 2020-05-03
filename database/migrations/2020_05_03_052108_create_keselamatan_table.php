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
            $table->enum('airbagDepan',['Ya','Tidak']);
            $table->enum('airbagBelakang',['Ya','Tidak']);
            $table->enum('childSafety',['Ya','Tidak']);
            $table->enum('kantongUdara',['Ya','Tidak']);
            $table->enum('airbagSamping',['Ya','Tidak']);
            $table->enum('vehicleStability',['Ya','Tidak']);
            $table->enum('sabukPengaman',['Ya','Tidak']);
            $table->enum('pengingatPengaman',['Ya','Tidak']);
            $table->enum('kameraBelakang',['Ya','Tidak']);
            $table->enum('sensorParkir',['Ya','Tidak']);
            $table->enum('engineCheck',['Ya','Tidak']);
            $table->enum('pengukurTekanan',['Ya','Tidak']);
            $table->enum('pelindungBenturan',['Ya','Tidak']);
            $table->enum('pengingatPintu',['Ya','Tidak']);
            $table->enum('kontrolTraksi',['Ya','Tidak']);
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
