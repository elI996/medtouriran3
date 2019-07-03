<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBannersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('banners', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('title', 191);
			$table->string('subtitle', 191)->nullable();
			$table->string('link', 191)->nullable();
			$table->string('image', 191)->nullable();
			$table->timestamps();
			$table->string('position', 191)->nullable()->default('left');
			$table->integer('order')->nullable()->default(1);
			$table->string('icon', 191)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('banners');
	}

}
