<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class komponen_inti extends Model
{
    public function role(){
    	return $this->hasOne('App\role');
    }

    public function prodi(){
    	return $this->hasOne('App\prodi');
    }
}
