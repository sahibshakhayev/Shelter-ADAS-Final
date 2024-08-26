<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
        ]);

        // Disallow registration as Admin or Seller
        $userType = 2; // Default to customer

        $user = User::create([
            'name' => $validated['name'],
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
            'user_type' => $userType,
        ]);

        $accessToken = JWTAuth::fromUser($user);
        $refreshToken = JWTAuth::claims(['refresh' => true])->fromUser($user);
        $accessExpire = JWTAuth::factory()->getTTL();
        $refreshExpire = config('jwt.refresh_ttl');

        return response()->json([
            'user_id' => $user->id,
            'user_name' => $user->name,
            'user_type' => $user->user_type,
            'access_token' => $accessToken,
            'refresh_token' => $refreshToken,
            'access_expire' => $accessExpire,
            'refresh_expire' => $refreshExpire,
        ], 201);
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (!$token = JWTAuth::attempt($credentials)) {
            return response()->json(['error' => 'Invalid Credentials'], 401);
        }

        $user = Auth::user();
        $accessToken = $token;
        $refreshToken = JWTAuth::claims(['refresh' => true])->fromUser($user);
        $accessExpire = JWTAuth::factory()->getTTL();
        $refreshExpire = config('jwt.refresh_ttl');

        return response()->json([
            'user_id' => $user->id,
            'user_name' => $user->name,
            'user_type' => $user->user_type,
            'access_token' => $accessToken,
            'refresh_token' => $refreshToken,
            'access_expire' => $accessExpire,
            'refresh_expire' => $refreshExpire,
        ]);
    }

    public function me(Request $request)
    {
        return response()->json(Auth::user());
    }




    public function refreshToken()
    {
        try {
            $newToken = JWTAuth::refresh(JWTAuth::getToken());
            $user = Auth::user();
            $refreshToken = JWTAuth::claims(['refresh' => true])->fromUser($user);
            $accessExpire = JWTAuth::factory()->getTTL();
            $refreshExpire = config('jwt.refresh_ttl');

            return response()->json([
                'access_token' => $newToken,
                'refresh_token' => $refreshToken,
                'access_expire' => $accessExpire,
                'refresh_expire' => $refreshExpire,
            ]);
        } catch (JWTException $e) {
            return response()->json(['error' => 'Could not refresh token'], 500);
        }
    }

    public function logout()
    {
        JWTAuth::invalidate(JWTAuth::getToken());
        return response()->json(['message' => 'Successfully logged out']);
    }

    public function updateUserType(Request $request, $id)
    {
        $user = Auth::user();
        if ($user->user_type !== 0) { // Check if the user is admin
            return response()->json(['error' => 'Unauthorized'], 403);
        }

        $targetUser = User::findOrFail($id);
        $validated = $request->validate([
            'user_type' => 'required|integer|in:0,1,2',
        ]);

        $targetUser->user_type = $validated['user_type'];
        $targetUser->save();

        return response()->json(['message' => 'User type updated successfully']);
    }
}
