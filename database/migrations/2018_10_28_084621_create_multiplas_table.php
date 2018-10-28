<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMultiplasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('multiplas', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idScommessa');
            $table->string('chiave', 191);
            $table->string('tipo', 191);
            $table->string('value', 191);
            $table->float('quota');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('multiplas');
    }
}
