<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Carbon\Carbon;

class PasswordResetController extends Controller
{
    public function sendResetCode(Request $request)
    {
        $request->validate(['email' => 'required|email|exists:users,email']);

        $token = Str::random(6); // Generate a random 6-character reset code
        $email = $request->email;

        DB::table('password_resets')->updateOrInsert(
            ['email' => $email],
            ['token' => $token, 'created_at' => Carbon::now()]
        );

        // Send the reset code via email
        Mail::send('emails.password_reset', ['token' => $token], function ($message) use ($email) {
            $message->to($email);
            $message->subject('Password Reset Code');
        });

        return response()->json(['message' => 'Reset code sent to your email address.'], 200);
    }

    public function validateResetCode(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',
            'token' => 'required|string|min:6',
        ]);

        $reset = DB::table('password_resets')
            ->where('email', $request->email)
            ->where('token', $request->token)
            ->first();

        if (!$reset) {
            return response()->json(['error' => 'Invalid reset code.'], 400);
        }

        // Check if the token is still valid (less than 60 minutes old)
        if (Carbon::parse($reset->created_at)->addMinutes(60)->isPast()) {
            return response()->json(['error' => 'Reset code has expired.'], 400);
        }

        return response()->json(['message' => 'Reset code is valid.'], 200);
    }

    public function resetPassword(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',
            'token' => 'required|string|min:6',
            'password' => 'required|string|min:8|confirmed',
        ]);

        $reset = DB::table('password_resets')
            ->where('email', $request->email)
            ->where('token', $request->token)
            ->first();

        if (!$reset) {
            return response()->json(['error' => 'Invalid reset code.'], 400);
        }

        // Check if the token is still valid (less than 60 minutes old)
        if (Carbon::parse($reset->created_at)->addMinutes(60)->isPast()) {
            return response()->json(['error' => 'Reset code has expired.'], 400);
        }

        $user = User::where('email', $request->email)->first();
        $user->password = Hash::make($request->password);
        $user->save();

        // Delete the password reset entry after successful reset
        DB::table('password_resets')->where('email', $request->email)->delete();

        return response()->json(['message' => 'Password has been successfully reset.'], 200);
    }
}
