<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubSoalPenggunaLulusan extends Model
{

	protected $table = "subsoal_pengguna_lulusan";
	
	protected $fillable = [
        
        'value',
    ];
}
