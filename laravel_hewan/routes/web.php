<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HewanController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/animals', [HewanController::class, 'index']);
