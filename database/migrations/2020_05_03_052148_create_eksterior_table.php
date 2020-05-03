<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEksteriorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('eksterior', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_type')->unsigned();
            $table->foreign('id_type')->references('id')->on('type')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->enum('adjutableHeadlight',['Ya','Tidak']);
            $table->enum('lampuKabutDepan',['Ya','Tidak']);
            $table->enum('kacaSpionElektrik',['Ya','Tidak']);
            $table->enum('kacaSpionLuarManual',['Ya','Tidak']);
            $table->enum('wiperOtomatis',['Ya','Tidak']);
            $table->enum('wiperKacaBelakang',['Ya','Tidak']);
            $table->enum('coverVelg',['Ya','Tidak']);
            $table->enum('velgAlloy',['Ya','Tidak']);
            $table->enum('anthenaElektrik',['Ya','Tidak']);
            $table->enum('spoilerBelakang',['Ya','Tidak']);
            $table->enum('atapConvertible',['Ya','Tidak']);
            $table->enum('roofRack',['Ya','Tidak']);
            $table->enum('sunRoof',['Ya','Tidak']);
            $table->enum('pijakanSamping',['Ya','Tidak']);
            $table->enum('lampuSein',['Ya','Tidak']);
            $table->enum('anthenaTerpadu',['Ya','Tidak']);
            $table->enum('grilleKrom',['Ya','Tidak']);
            $table->enum('roofRail',['Ya','Tidak']);
            $table->string('jenisRemBelakang','20');
            $table->string('jenisRemDepan','20');
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
        Schema::dropIfExists('eksterior');
    }
}
