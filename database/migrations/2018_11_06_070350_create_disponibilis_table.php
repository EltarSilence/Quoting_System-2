<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDisponibilisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('disponibilis', function (Blueprint $table) {
            $table->increments('idD');
            $table->string('fileD', 191);
            $table->date('dalD');
            $table->date('alD');
            $table->string('descrizioneD', 191)


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('disponibilis');
    }
}
