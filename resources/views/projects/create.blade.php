@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">
    <div class="col">
      <form action="{{ route('projects.store') }}" method="POST">
        @csrf
        <div class="form-group">
          <label for="project_name">Project Name</label>
          <input type="text" name="project_name" id="project_name" class="form-control">
        </div>
  
        <div class="form-group">
          <label for="client">Client</label>
          <input type="text" name="client" id="client" class="form-control">
        </div>
  
        <div class="form-group">
          <label for="projects_leader">Project Leader</label>
          <input type="number" name="projects_leader" id="projects_leader" class="form-control">
        </div>
  
        <div class="form-group">
          <label for="start_date">Start Date</label>
          <input type="date" name="start_date" id="start_date" class="form-control" >
        </div>
  
        <div class="form-group">
          <label for="end_date">End Date</label>
          <input type="date" name="end_date" id="end_date" class="form-control" >
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
</div>

@endsection