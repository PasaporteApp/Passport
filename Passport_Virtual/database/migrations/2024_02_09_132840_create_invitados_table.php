<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvitadosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invitados', function (Blueprint $table) {
            $table->id();

            $table->string('NombreCompleto')->nullable();
            $table->string('Apellidos')->nullable();
            $table->string('Correo')->nullable();
            $table->string('Telefono')->nullable();

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
        Schema::dropIfExists('invitados');
    }
}
