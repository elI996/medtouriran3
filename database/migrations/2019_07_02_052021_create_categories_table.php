<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCategoriesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('categories', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('parent_id')->unsigned()->nullable()->index('categories_parent_id_foreign');
			$table->integer('order')->default(1);
			$table->string('title', 191);
			$table->string('slug', 191)->unique();
			$table->timestamps();
			$table->text('body', 65535)->nullable();
			$table->string('image', 191)->nullable();
			$table->string('icon', 191)->nullable();
			$table->text('excerpt', 65535)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('categories');
	}

}
