<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\SystemSettingController;

Route::post('/login', [LoginController::class, 'login']);


Route::middleware('auth:sanctum')->group(function(){
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    /* System Setting routes */
    Route::apiResource('/system-setting', SystemSettingController::class);
});
