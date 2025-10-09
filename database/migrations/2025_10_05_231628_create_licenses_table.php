<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('licenses', function (Blueprint $table) {
            $table->id();
            $table->string('ip')->nullable()->unique();
            $table->string('domain')->nullable();
            $table->uuid('license_id');
            $table->string('discord_user')->nullable();
            $table->unsignedBigInteger('plugin_id')->nullable();
            $table->foreign('plugin_id')->references('plugin_id')->on('plugins')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('licenses');
    }
};
