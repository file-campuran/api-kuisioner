<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SoalLulusan;
use App\SubSoalLulusan;
use App\SoftskillSoalLulusan;
use App\SoftskillSubSoalLulusan;


class SoalLulusanTphtController extends Controller
{

    public function index(){
	
		//komponen inti
		$Soal =SoalLulusan::all(); 
		$SubSoal =SubSoalLulusan::where('id_prodi',2)->get();
    	$array[]=['tpht'=>['komponen_inti'=>['soal'=>$Soal,'SubSoal'=>$SubSoal]]];
 		   
 		   	
    	//softskill
 		$SoftskillSoal =SoftskillSoalLulusan::all(); 
		$SoftskillSubSoal =SoftskillSubSoalLulusan::all();
    	$array2[]=['Softskill'=>['soal'=>$SoftskillSoal,'SubSoal'=>$SoftskillSubSoal]];


		return [$array,$array2];
     


	   }
}
   