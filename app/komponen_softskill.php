<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class komponen_softskill extends Model
{
    public function sub_role(){
    	return $this->hasOne('App\sub_role');
    }
}
