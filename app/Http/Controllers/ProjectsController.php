<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;

class ProjectsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projects = new Project();

        $data = [
            'projects' => $projects->getAllProjects()
        ];
        return view('projects.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $project = new Project();
        return view('projects.create', compact('project'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $project = new Project();
        $project->project_name = request('project_name');
        $project->client = request('client');
        $project->projects_leader = request('projects_leader');
        $project->start_date = request('start_date');
        $project->end_date = request('end_date');
        $project->save();

        return redirect('/projects/index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function show(Project $project)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $project = new Project();
        $project = Project::find($id);
        if ($project === null) {
            abort(404, "No project has been found.");
        }
        // use compact() to pass the variable to the view
        return view('projects.edit', compact('project'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $project = new Project();
        $project = Project::find($id);
        if ($project === null) {
            abort(404, "No project has been found.");
        }
        $project->project_name = request('project_name');
        $project->client = request('client');
        $project->projects_leader = request('projects_leader');
        $project->start_date = request('start_date');
        $project->end_date = request('end_date');
        $project->save();
        return redirect()->route('projects');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $project = new Project();
        $project = Project::find($id);
        if ($project === null) {
            abort(404, "No project has been found.");
        }

        $project->delete();
        return redirect()->route('projects');

    }
}
