<?php


use App\Http\Controllers\AuthController;

use App\Http\Controllers\PasswordResetController;



Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);
Route::post('refresh', [AuthController::class, 'refreshToken']);
Route::post('logout', [AuthController::class, 'logout'])->middleware('auth:api');



Route::middleware(['auth:api'])->group(function () {
Route::patch('user/{id}/update-type', [AuthController::class, 'updateUserType']);
});

Route::get('me', [AuthController::class, 'me'])->middleware('auth:api');


Route::post('password/reset-code', [PasswordResetController::class, 'sendResetCode']);
Route::post('password/validate-code', [PasswordResetController::class, 'validateResetCode']);
Route::post('password/reset', [PasswordResetController::class, 'resetPassword']);


