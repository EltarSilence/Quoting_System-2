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
            $table->increments('idS');
            $table->integer('idUtenteS');
            $table->integer('coinS');
            $table->date('dataS');
            $table->integer('pagataS');
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
