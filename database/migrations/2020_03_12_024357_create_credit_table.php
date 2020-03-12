<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCreditTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('credit', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_down_payment')->unsigned();
            $table->foreign('id_down_payment')->references('id')->on('down_payment')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->integer('price');
            $table->integer('tenor');
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
        Schema::dropIfExists('credit');
    }
}
