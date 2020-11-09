<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class role extends Model
{

    public $timestamps = false;

    protected $fillable = [
        'id', 'role', 'user_id'
    ];

    public function User()
    {
    	return $this->belongsTo('App\User');
    }

    public function komponen_inti()
    {
    	return $this->belongsTo('App\komponen_inti');
    }
}
