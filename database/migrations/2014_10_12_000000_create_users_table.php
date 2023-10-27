<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('usertype', 20);
            $table->string('name', 255);
            $table->string('email', 255)->unique();
            $table->string('password', 60);
            $table->string('phone', 255)->nullable();
            $table->text('about')->nullable();
            $table->string('facebook', 255)->nullable();
            $table->string('twitter', 255)->nullable();
            $table->string('instagram', 255)->nullable();
            $table->string('linkedin', 255)->nullable();
            $table->string('image_icon', 255)->nullable();
            $table->integer('status')->default(0);
            $table->string('confirmation_code', 255)->nullable();
            $table->string('remember_token', 100)->nullable();
            $table->timestamps(0);
        });
    }

    public function down()
    {
        Schema::dropIfExists('users');
    }
}
