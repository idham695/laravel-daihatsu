<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLainLainTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lain_lain', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_type')->unsigned();
            $table->foreign('id_type')->references('id')->on('type')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->enum('tachometer',['Ya','Tidak']);
            $table->enum('electronicMultiTripmeter',['Ya','Tidak']);
            $table->enum('jokDilapisiKulit',['Ya','Tidak']);
            $table->enum('lapisanBerbahanKain',['Ya','Tidak']);
            $table->enum('stirBerbalutKulit',['Ya','Tidak']);
            $table->enum('temperaturUdaraLuar',['Ya','Tidak']);
            $table->enum('odometerDigital',['Ya','Tidak']);
            $table->enum('pengaturanKursiElektrik',['Ya','Tidak']);
            $table->enum('tangkiBahanBakar',['Ya','Tidak']);
            $table->string('jenisLampuDepan','20');
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
        Schema::dropIfExists('lain_lain');
    }
}
