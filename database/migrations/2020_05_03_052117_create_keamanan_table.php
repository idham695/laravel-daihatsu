<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKeamananTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keamanan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_type')->unsigned();
            $table->foreign('id_type')->references('id')->on('type')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->enum('centralLocking',['Ya','Tidak'])->nullable();
            $table->enum('smartAccess',['Ya','Tidak'])->nullable();
            $table->enum('powerDoorLocks',['Ya','Tidak'])->nullable();
            $table->enum('antiTheftDevice',['Ya','Tidak'])->nullable();
            $table->enum('alarmMobil',['Ya','Tidak'])->nullable();
            $table->enum('engineImmobilizer',['Ya','Tidak'])->nullable();
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
        Schema::dropIfExists('keamanan');
    }
}
