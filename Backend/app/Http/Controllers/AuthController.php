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


        $payload = JWTAuth::setToken($accessToken)->getPayload();
        logger('LOGIN - Access Token Issued At: ' . $payload['iat']);
        logger('LOGIN - Access Token Expires At: ' . $payload['exp']);

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




    public function refreshToken(Request $request)
    {
        try {
            // Get the current refresh token
            $refreshToken = $request->header('Authorization') ?: $request->input('refresh_token');

            // Strip "Bearer " prefix if it exists
            if (str_starts_with($refreshToken, 'Bearer ')) {
                $refreshToken = substr($refreshToken, 7);
            }


            if (!$refreshToken) {


                return response()->json(['error' => 'refresh_token or Bearer Authorization header with refresh token must be defined'], 400);

            }

            // Refresh the access token
            $newAccessToken = JWTAuth::setToken($refreshToken)->refresh();

            // Get the user for generating tokens
            $user = JWTAuth::setToken($newAccessToken)->toUser();
            $accessExpire = JWTAuth::factory()->getTTL(); // Access token TTL in minutes
            $refreshExpire = config('jwt.refresh_ttl');   // Refresh token TTL from config

            // Check if refresh token has expired
            $currentPayload = JWTAuth::setToken($refreshToken)->getPayload();
            $currentRefreshExpiry = $currentPayload['exp'];
            $currentTime = now()->timestamp;


            // Return the new access token and the new refresh token only if issued
            return response()->json([
                'access_token' => $newAccessToken,
                'access_expire' => $accessExpire,
                'refresh_token' => $refreshToken,
                'refresh_expire' => $refreshExpire,
            ]);
        } catch (\Tymon\JWTAuth\Exceptions\TokenExpiredException $e) {
            return response()->json(['error' => 'Token has expired and cannot be refreshed. Please log in again.'], 401);
        }
        catch (\Tymon\JWTAuth\Exceptions\TokenInvalidException $e) {
            return response()->json(['error' => 'Invalid Refresh Token'], 401);
        }

        catch (JWTException $e) {
            return response()->json(['error' => 'Could not refresh token.'], 500);
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
