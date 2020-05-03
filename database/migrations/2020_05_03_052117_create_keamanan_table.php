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
            $table->enum('smartAccess',['Ya','Tidak']);
            $table->enum('powerDoorLocks',['Ya','Tidak']);
            $table->enum('antiTheftDevice',['Ya','Tidak']);
            $table->enum('alarmMobil',['Ya','Tidak']);
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
