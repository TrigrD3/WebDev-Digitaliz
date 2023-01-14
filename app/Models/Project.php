<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{

    protected $fillable = [
        'project_name',
        'client',
        'projects_leader',
        'start_date',
        'end_date',
    ];
    use HasFactory;

    function getAllProjects() {
        return Project::all();
    }

    function user(){
        return $this -> belongsTo('App\Models\User', "projects_leader", "id");
    }
}
