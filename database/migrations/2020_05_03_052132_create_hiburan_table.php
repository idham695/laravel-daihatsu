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
            $table->enum('layarSentuh',['Ya','Tidak']);
            $table->enum('sistemNavigasi',['Ya','Tidak']);
            $table->enum('sambunganBluetooth',['Ya','Tidak']);
            $table->enum('pemutarCD',['Ya','Tidak']);
            $table->enum('soketUSB',['Ya','Tidak']);
            $table->enum('pemutarDVD',['Ya','Tidak']);
            $table->enum('speakerDepan',['Ya','Tidak']);
            $table->enum('speakerBelakang',['Ya','Tidak']);
            $table->enum('audio2DIN',['Ya','Tidak']);
            $table->enum('perintahSuara',['Ya','Tidak']);
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
