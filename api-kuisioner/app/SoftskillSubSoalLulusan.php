<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SoftskillSubSoalLulusan extends Model
{

	protected $table = "softskill_subsoal_lulusan";
	
	protected $fillable = [
        
        'value','id_prodi'
    ];

     public function prodi() {
    
    	return $this->belongsTo('App\Prodi','id_prodi' , 'id');
    }
}
