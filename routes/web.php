<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/projects/index', [App\Http\Controllers\ProjectsController::class, 'index'])->name('projects');
route::get('/projects/create', [App\Http\Controllers\ProjectsController::class, 'create'])->name('projects.create');
route::post('/projects', [App\Http\Controllers\ProjectsController::class, 'store'])->name('projects.store');
route::get('/projects/{id}', [App\Http\Controllers\ProjectsController::class, 'show'])->name('projects.show');
route::get('/projects/{id}/edit', [App\Http\Controllers\ProjectsController::class, 'edit'])->name('projects.edit');
route::put('/projects/{id}', [App\Http\Controllers\ProjectsController::class, 'update'])->name('projects.update');
route::delete('/projects/{id}', [App\Http\Controllers\ProjectsController::class, 'destroy'])->name('projects.delete');