<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class result extends Model
{

    protected $fillable = [
       'id_poin','hasil', 'id_user',
    ];

    public function User(){
    	return $this->belongsTo('App\User');
    }



}
