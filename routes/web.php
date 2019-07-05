<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::middleware(['web', 'localized'])
    ->prefix(request()->segment(1))
    ->group(function () {
        
    App::setLocale(request()->segment(1));   
    Route::get('/','Front\HomeController@home_page')->name('home');
    
    
    Route::get('/search','Front\HomeController@home_search')->name('homesearch');
    
    Route::get('/services','Front\HomeController@services')->name('service');

    Route::get('/services/doctors','Front\HomeController@doctors')->name('service.doctor.index');
    Route::get('/services/doctors/{doctor}/{slug?}','Front\HomeController@doctor')->name('service.doctor.show');
    
    Route::get('/services/{type}','Front\HomeController@hotels')->name('service.hotel.index');
    Route::get('/services/{type}/{hotel}/{slug?}','Front\HomeController@hotel')->name('service.hotel.show');
    
    
    Route::get('/procedures','Front\HomeController@procedures')->name('procedure.index');
    Route::get('/procedures/{category}/{slug?}','Front\HomeController@procedure')->name('procedure.show');
    
    Route::get('/packages','Front\HomeController@packages')->name('package.index');
    Route::get('/packages/{package}/{slug?}','Front\HomeController@package')->name('package.show');
    
    Route::get('/medical-tourism','Front\HomeController@medicalTourism')->name('aboutMedical');
    Route::get('/medical-tourism/destinations','Front\HomeController@destinations')->name('aboutMedical.destination.index');
    Route::get('/medical-tourism/destinations/{city}/{slug?}','Front\HomeController@destination')->name('aboutMedical.destination.show');
    
    Route::get('/blogs','Front\HomeController@blogs')->name('blog.index');
    Route::get('/blogs/{single_post}/{slug?}','Front\HomeController@blog')->name('blog.show');
    
    Route::get('/patients-review','Front\HomeController@patient_review')->name('patientReview');
    
    
    Route::get('page/{slug}','Front\HomeController@pages_show')->name('single-page');

    
    Route::post('/service/request/store','Front\HomeController@category_request')->name('category.request');
    Route::post('/comment/store','Front\HomeController@comment_store')->name('comment_store');
    
    Route::group(['prefix' => 'myadmin'], function () {
        Voyager::routes();
    });
    
    
});


Route::name('locale.switch')->get('switch/{locale}', 'Front\HomeController@local_switch');


