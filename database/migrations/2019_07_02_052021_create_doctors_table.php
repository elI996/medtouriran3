<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDoctorsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('doctors', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 191)->nullable();
			$table->text('about')->nullable();
			$table->text('testimonal')->nullable();
			$table->text('address')->nullable();
			$table->string('phone', 191)->nullable();
			$table->string('email', 191)->nullable();
			$table->string('website', 191)->nullable();
			$table->timestamps();
			$table->string('avatar', 191)->nullable();
			$table->text('images')->nullable();
			$table->integer('order')->nullable()->default(1);
			$table->string('slug', 191)->nullable();
			$table->integer('rate')->nullable()->default(100);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('doctors');
	}

}
