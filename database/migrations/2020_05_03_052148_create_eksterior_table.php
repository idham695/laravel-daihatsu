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
            $table->enum('adjutableHeadlight',['Ya','Tidak'])->nullable();
            $table->enum('lampuKabutDepan',['Ya','Tidak'])->nullable();
            $table->enum('lampuKabutBelakang',['Ya','Tidak'])->nullable();
            $table->enum('kacaSpionElektrik',['Ya','Tidak'])->nullable();
            $table->enum('kacaSpionLuarManual',['Ya','Tidak'])->nullable();
            $table->enum('wiperOtomatis',['Ya','Tidak'])->nullable();
            $table->enum('wiperKacaBelakang',['Ya','Tidak'])->nullable();
            $table->enum('washerKacaBelakang',['Ya','Tidak'])->nullable();
            $table->enum('defoggerKacaBelakang',['Ya','Tidak'])->nullable();
            $table->enum('coverVelg',['Ya','Tidak'])->nullable();
            $table->enum('tintedGlass',['Ya','Tidak'])->nullable();
            $table->enum('velgAlloy',['Ya','Tidak'])->nullable();
            $table->enum('anthenaElektrik',['Ya','Tidak'])->nullable();
            $table->enum('spoilerBelakang',['Ya','Tidak'])->nullable();
            $table->enum('atapConvertible',['Ya','Tidak'])->nullable();
            $table->enum('roofRack',['Ya','Tidak'])->nullable();
            $table->enum('sunRoof',['Ya','Tidak'])->nullable();
            $table->enum('moonRoof',['Ya','Tidak'])->nullable();
            $table->enum('pijakanSamping',['Ya','Tidak'])->nullable();
            $table->enum('lampuSein',['Ya','Tidak'])->nullable();
            $table->enum('anthenaTerpadu',['Ya','Tidak'])->nullable();
            $table->enum('grilleKrom',['Ya','Tidak'])->nullable();
            $table->enum('garnishKrom',['Ya','Tidak'])->nullable();
            $table->enum('roofRail',['Ya','Tidak'])->nullable();
            $table->enum('tuasPembuka',['Ya','Tidak'])->nullable();
            $table->string('jenisRemBelakang','20');
            $table->string('jenisRemDepan','20');
            $table->string('fiturTambahan','100')->nullable();
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
