<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nama', 'nama_perusahaan', 'jabatan','tahun_lulus','pengalaman'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */

    public function result(){
    	return $this->hasMany('App\result');
    }

    public function role(){
    	return $this->hasOne('App\role');
    }

    public function sub_role(){
    	return $this->hasOne('App\sub_role');
    }

    public function prodi(){
    	return $this->hasOne('App\prodi');
    }

}
