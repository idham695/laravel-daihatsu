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
            $table->enum('AC',['Ya','Tidak'])->nullable();
            $table->enum('powerWindowDepan',['Ya','Tidak'])->nullable();
            $table->enum('powerWindowBelakang',['Ya','Tidak'])->nullable();
            $table->enum('powerSteering',['Ya','Tidak'])->nullable();
            $table->enum('automaticClimate',['Ya','Tidak'])->nullable();
            $table->enum('airQuality',['Ya','Tidak'])->nullable();
            $table->enum('pemanas',['Ya','Tidak'])->nullable();
            $table->enum('gloveBox',['Ya','Tidak'])->nullable();
            $table->enum('engineStart',['Ya','Tidak'])->nullable();
            $table->enum('ventilasiAC',['Ya','Tidak'])->nullable();
            $table->enum('adjustableSheet',['Ya','Tidak'])->nullable();
            $table->enum('kursiPengemudi',['Ya','Tidak'])->nullable();
            $table->enum('kursiHeaterDepan',['Ya','Tidak'])->nullable();
            $table->enum('kursiHeaterBelakang',['Ya','Tidak'])->nullable();
            $table->enum('onboardComputer',['Ya','Tidak'])->nullable();
            $table->enum('spionLipat',['Ya','Tidak'])->nullable();
            $table->enum('automaticHeadLamps',['Ya','Tidak'])->nullable();
            $table->enum('followMeHomeHeadLamps',['Ya','Tidak'])->nullable();
            $table->enum('steeringWheel',['Ya','Tidak'])->nullable();
            $table->enum('powerOutlet',['Ya','Tidak'])->nullable();
            $table->enum('lingkarKemudi',['Ya','Tidak'])->nullable();
            $table->enum('cruiseControl',['Ya','Tidak'])->nullable();
            $table->enum('kursiLipatBelakang',['Ya','Tidak'])->nullable();
            $table->enum('pembukaBagasi',['Ya','Tidak'])->nullable();
            $table->enum('lampuPengingat',['Ya','Tidak'])->nullable();
            $table->enum('lampuBaca',['Ya','Tidak'])->nullable();
            $table->enum('headrestKursi',['Ya','Tidak'])->nullable();
            $table->enum('armRest',['Ya','Tidak'])->nullable();
            $table->enum('cupHolderDepan',['Ya','Tidak'])->nullable();
            $table->enum('cupHolderBelakang',['Ya','Tidak'])->nullable();
            $table->enum('lumbarSupport',['Ya','Tidak'])->nullable();
            $table->enum('bottleHolder',['Ya','Tidak'])->nullable();
            $table->enum('lampuBagasi',['Ya','Tidak'])->nullable();
            $table->enum('mejaLipatBelakang',['Ya','Tidak'])->nullable();
            $table->enum('vanityMirror',['Ya','Tidak'])->nullable();
            $table->enum('keylessEntry',['Ya','Tidak'])->nullable();
            $table->enum('armRestTengah',['Ya','Tidak'])->nullable();
            $table->string('fiturTambahan', '30')->nullable();
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
