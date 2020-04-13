<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBikesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bikes', function (Blueprint $table) {
            $table->id();
            $table->enum('model', ['Curt Belt', 'Curt', 'Stout', 'Stellar']);
            $table->string("color")->nullable();
            $table->string('frame_number');
            $table->string('sku_code');
            $table->enum('status', ['Arrived', 'In transit']);
            $table->enum('size', ['L', 'M', 'S']);
            $table->timestamps();
            //Package parameters
            $table->float('weight');
            $table->integer('length');
            $table->integer('height');
            $table->integer('width');
            //WAREHOUSE foreign key
            $table->unsignedBigInteger('warehouse_id');
            $table->foreign('warehouse_id')->references('id')->on('warehouses');
            //Order foreign key
            $table->unsignedBigInteger('order_id')->nullable();
            $table->foreign('order_id')->references('id')->on('orders');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bikes');
    }
}
