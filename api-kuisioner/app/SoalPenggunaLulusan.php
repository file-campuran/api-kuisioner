<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SoalPenggunaLulusan extends Model
{

	protected $table = "soal_pengguna_lulusan";
	
	protected $fillable = [
        
        'value',
    ];
}
