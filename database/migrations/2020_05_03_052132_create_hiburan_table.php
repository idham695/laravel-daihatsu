<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHiburanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hiburan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_type')->unsigned();
            $table->foreign('id_type')->references('id')->on('type')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->enum('layarSentuh',['Ya','Tidak','Optional'])->nullable();
            $table->enum('radioAM',['Ya','Tidak'])->nullable();
            $table->enum('sistemNavigasi',['Ya','Tidak','Optional'])->nullable();
            $table->enum('sambunganBluetooth',['Ya','Tidak'])->nullable();
            $table->enum('pemutarCD',['Ya','Tidak'])->nullable();
            $table->enum('soketUSB',['Ya','Tidak'])->nullable();
            $table->enum('pemutarDVD',['Ya','Tidak'])->nullable();
            $table->enum('speakerDepan',['Ya','Tidak'])->nullable();
            $table->enum('speakerBelakang',['Ya','Tidak'])->nullable();
            $table->enum('audio2DIN',['Ya','Tidak'])->nullable();
            $table->enum('perintahSuara',['Ya','Tidak'])->nullable();
            $table->string('fiturTambahan', 100)->nullable();
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
        Schema::dropIfExists('hiburan');
    }
}
