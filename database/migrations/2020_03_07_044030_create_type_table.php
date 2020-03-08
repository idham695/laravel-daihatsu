<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTypeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('type', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_product')->unsigned();
            $table->foreign('id_product')->references('id')->on('product')
                  ->onDelete('cascade')
                  ->onUpdate('cascade');
            $table->string('type', 50);
            $table->double('price');
            $table->text('desc', 65536);
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
        Schema::dropIfExists('type');
    }
}
