<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SoalLulusan;
use App\SubSoalLulusan;
use App\SoftskillSoalLulusan;
use App\SoftskillSubSoalLulusan;


class SoalLulusanTiController extends Controller
{

    public function index(){
	
		//komponen inti
		$Soal =SoalLulusan::all(); 
		$SubSoal =SubSoalLulusan::where('id_prodi',1)->get();
    	$array[]=['ti'=>['komponen_inti'=>['soal'=>$Soal,'SubSoal'=>$SubSoal]]];
 		   
 		   	
    	//softskill
 		$SoftskillSoal =SoftskillSoalLulusan::all(); 
		$SoftskillSubSoal =SoftskillSubSoalLulusan::where('id_prodi',1)->get();
    	$array2[]=['Softskill'=>['soal'=>$SoftskillSoal,'SubSoal'=>$SoftskillSubSoal]];

		return [$array,$array2];
     


	   }
}
   