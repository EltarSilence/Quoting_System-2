<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateScommessasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('scommessas', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idUtente');
            $table->integer('coin');
            $table->date('data');
            $table->integer('pagata');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('scommessas');
    }
}
