<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductImageEksteriorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_image_eksterior', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_product')->unsigned();
            $table->foreign('id_product')->references('id')->on('product')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->string('image', '255');
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
        Schema::dropIfExists('product_image_eksterior');
    }
}
