<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SoalPenggunaLulusan;
use App\SubSoalPenggunaLulusan;
use App\SoftskillSoalPenggunaLulusan;
use App\SoftskillSubSoalPenggunaLulusan;


class SoalPenggunaLulusanController extends Controller
{

    public function index(){
	
		//komponen inti
		$Soal =SoalPenggunaLulusan::all(); 
		$SubSoal =SubSoalPenggunaLulusan::all();
    	$array[]=['hrd_atasan'=>['komponen_inti'=>['soal'=>$Soal,'SubSoal'=>$SubSoal]]];
 		   
 		   	
    	//softskill
 		$SoftskillSoal =SoftskillSoalPenggunaLulusan::all(); 
		$SoftskillSubSoal =SoftskillSubSoalPenggunaLulusan::all();
    	$array2[]=['Softskill'=>['soal'=>$SoftskillSoal,'SubSoal'=>$SoftskillSubSoal]];


		return [$array,$array2];
     


	   }
}
   