<?php

namespace App\Http\Controllers;

use App\role;
use App\User;
use Illuminate\Http\Request;


class GetController extends Controller
{
    public function show_user(){
        $user = User::with('role')->get();
        return response([
            'success' => true,
            'message' => 'List Semua Posts',
            'data' => $user,
        ], 200);
    }
}
