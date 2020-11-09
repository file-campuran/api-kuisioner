<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Prodi;


class ProdiController extends Controller
{

    public function index(){
		$upload = Prodi::all();
        return $upload;
	   }
}
   