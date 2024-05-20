<?php

use App\Http\Controllers\GegevensController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
});

Route::get('/producten/index', [GegevensController::class, 'index'])->name('producten.index');

Route::post('/producten/index', [GegevensController::class, 'index'])->name('producten.index');

Route::get('/specificatie/index/{product}/{info}/{secondInfo}', [GegevensController::class, 'specificatieIndex'])->name('specificatie.index');
