<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KomponenInti extends Model
{

	protected $table = "komponen_inti_lulusan";
	
	protected $fillable = [
        
        'id_soal','id_subsoal','id_prodi',
    ];
    public function soal() {
    
    	return $this->belongsTo('App\SoalLulusan','id_soal' , 'id');
    }


 public function subsoal() {
    
    	return $this->belongsTo('App\SubSoalLulusan','id_subsoal' , 'id');
    }

    public function prodi() {
    
    	return $this->belongsTo('App\Prodi','id_prodi' , 'id');
    }

}
