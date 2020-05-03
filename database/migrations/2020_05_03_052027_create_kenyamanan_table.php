<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKenyamananTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kenyamanan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_type')->unsigned();
            $table->foreign('id_type')->references('id')->on('type')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->enum('AC',['Ya','Tidak']);
            $table->enum('powerWindow',['Ya','Tidak']);
            $table->enum('powerSteering',['Ya','Tidak']);
            $table->enum('pemanas',['Ya','Tidak']);
            $table->enum('gloveBox',['Ya','Tidak']);
            $table->enum('engineStart',['Ya','Tidak']);
            $table->enum('adjustableSheet',['Ya','Tidak']);
            $table->enum('kursiHeaterDepan',['Ya','Tidak']);
            $table->enum('kursiHeaterBelakang',['Ya','Tidak']);
            $table->enum('spionLipat',['Ya','Tidak']);
            $table->enum('followMeHomeHeadLamps',['Ya','Tidak']);
            $table->enum('steeringWheel',['Ya','Tidak']);
            $table->enum('lingkarKemudi',['Ya','Tidak']);
            $table->enum('cruiseControl',['Ya','Tidak']);
            $table->enum('kursiLipatBelakang',['Ya','Tidak']);
            $table->enum('pembukaBagasi',['Ya','Tidak']);
            $table->enum('lampuPengingat',['Ya','Tidak']);
            $table->enum('headrestKursi',['Ya','Tidak']);
            $table->enum('armRest',['Ya','Tidak']);
            $table->enum('cupHolder',['Ya','Tidak']);
            $table->enum('lumbarSupport',['Ya','Tidak']);
            $table->enum('bottleHolder',['Ya','Tidak']);
            $table->enum('lampuBagasi',['Ya','Tidak']);
            $table->enum('mejaLipatBelakang',['Ya','Tidak']);
            $table->enum('armRest',['Ya','Tidak']);
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
        Schema::dropIfExists('kenyamanan');
    }
}
