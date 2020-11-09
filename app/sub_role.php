<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sub_role extends Model
{

    public $timestamps = false;

    protected $fillable = [
        'id', 'sub_role', 'user_id'
    ];

    public function User()
    {
    	return $this->belongsTo('App\User');
    }

    public function komponen_softskill()
    {
    	return $this->belongsTo('App\komponen_softskill');
    }
}
