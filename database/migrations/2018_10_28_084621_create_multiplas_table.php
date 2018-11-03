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
            $table->increments('idM');
            $table->integer('idScommessaM');
            $table->string('chiaveM', 191);
            $table->string('tipoM', 191);
            $table->string('valueM', 191);
            $table->float('quotaM');
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
