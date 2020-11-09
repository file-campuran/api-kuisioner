<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubSoalLulusan extends Model
{
	protected $table = "subsoal_lulusan";
	protected $fillable = [
        'value','id_soal','id_prodi'
    ];
 
 	public function soal() {
    
    	return $this->belongsTo('App\SoalLulusan','id_soal' , 'id');
    }

    public function prodi() {
    
    	return $this->belongsTo('App\Prodi','id_prodi' , 'id');
    }

}
