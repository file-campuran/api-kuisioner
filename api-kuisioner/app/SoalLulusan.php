<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SoalLulusan extends Model
{

	protected $table = "soal_lulusan";
	
	protected $fillable = [
        
        'value',
    ];
}
