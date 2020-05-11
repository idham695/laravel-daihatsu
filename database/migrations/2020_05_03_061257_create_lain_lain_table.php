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
            $table->enum('tachometer',['Ya','Tidak'])->nullable();
            $table->enum('electronicMultiTripmeter',['Ya','Tidak'])->nullable();
            $table->enum('jokDilapisiKulit',['Ya','Tidak'])->nullable();
            $table->enum('lapisanBerbahanKain',['Ya','Tidak'])->nullable();
            $table->enum('stirBerbalutKulit',['Ya','Tidak'])->nullable();
            $table->enum('temperaturUdaraLuar',['Ya','Tidak'])->nullable();
            $table->enum('jamDigital',['Ya','Tidak'])->nullable();
            $table->enum('odometerDigital',['Ya','Tidak'])->nullable();
            $table->enum('pengaturanKursiElektrik',['Ya','Tidak'])->nullable();
            $table->enum('tangkiBahanBakar',['Ya','Tidak'])->nullable();
            $table->string('jenisLampuDepan','20')->nullable();
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
