<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SoftskillSoalPenggunaLulusan extends Model
{

	protected $table = "softskill_soal_pengguna_lulusan";
	
	protected $fillable = [
        
        'value',
    ];
}
