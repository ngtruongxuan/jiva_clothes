<?php

namespace App\Models;

use App\Models\BaseModel;

class User extends BaseModel
{
    protected $table = 'users';

    protected $fillable = [
        'username',
        'password',
        'first_name',
        'last_name',
        'email',
        'image',
        'created_at',
        'created_by',
        'updated_at',
        'updated_by'
    ];
    protected $hidden = [
        'password'
    ];
}