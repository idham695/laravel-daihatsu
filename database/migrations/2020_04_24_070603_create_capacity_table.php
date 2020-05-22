<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCapacityTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('capacity', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_type')->unsigned();
            $table->foreign('id_type')->references('id')->on('type')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->integer('kapasitas_tempat_duduk');           
            $table->integer('kapasitas_tangki');           
            $table->integer('panjang');           
            $table->integer('lebar');           
            $table->integer('tinggi');           
            $table->integer('ground_clerance');           
            $table->integer('jarak_sumbu_roda');           
            $table->integer('jarak_pijak_roda_depan');           
            $table->integer('jarak_pijak_roda_belakang');           
            $table->integer('jumlah_pintu');           
            $table->integer('berat_bersih');           
            $table->integer('berat_kotor')->nullable();           
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
        Schema::dropIfExists('capacity');
    }
}
