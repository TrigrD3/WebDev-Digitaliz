@extends('layouts.app')
@section('content')

<div class="container">
  <div class="row">
    <div class="d-flex justify-content-center">
    <h3 class="text-center"><b>Project Monitoring</b></h3>
    </div>
  </div>

  <div class="container container2">
    <div class="row overflow-auto">
      <div class="col">
          <table class="table table-hover">
              <thead>
                  <tr class="table-primary border">
                      <th scope="col">PROJECT NAME</th>
                      <th scope="col">CLIENT</th>
                      <th scope="col">PROJECT LEADER</th>
                      <th scope="col">START DATE</th>
                      <th scope="col">END DATE</th>
                      <th scope="col">PROGRESS</th>
                      <th scope="col">ACTION</th>
                  </tr>
              </thead>
              <tbody>
                  @foreach ($projects as $project)
                      <tr>
                          <td>{{ $project->project_name }}</td>
                          <td>{{ $project->client }}</td>
                          <td>
                            <div class="row">
                                <div class="col-2">
                                  <img class="rounded-circle shadow-4-strong" src="https://picsum.photos/200?random={{ $project->user->id }}" alt="" style="max-width: 45px">
                                </div>
                                <div class="col-auto">
                                    <div>{{ $project->user->name }}</div>
                                    <div>{{ $project->user->email }}</div>
                                </div>
                            </div>
                        </td>
                        
                          <td>{{ strftime("%d %b %Y", strtotime($project->start_date)) }}</td>
                          <td>{{ strftime("%d %b %Y", strtotime($project->end_date)) }}</td>
                          <td>
                            <div class="row">
                              <div class="col-8">
                                <div class="progress">
                                  <div class="progress-bar 
                                      @if($project->progress < 25)bg-danger
                                      @elseif($project->progress >= 25 && $project->progress < 50) bg-warning
                                      @elseif($project->progress >= 50 && $project->progress < 75) bg-info
                                      @else bg-success
                                      @endif" 
                                      role="progressbar" style="width: {{ $project->progress }}%;" aria-valuenow="{{ $project->progress }}" aria-valuemin="0" aria-valuemax="100">
                                  </div>
                                </div>
                              </div>
                              <div class="col-2">
                                <div>{{ $project->progress }}%</div>
                              </div>
                            </div>


                          </td>
                        
                          <td>
                              <div class="d-flex">
                                {{-- <div class="col-auto me-1">
                                  <a href="{{ route('projects.show', $project->id) }}" class="btn btn-secondary">View</a>
                                </div> --}}
                                <div class="col-auto me-1 ms-2">
                                  <a href="{{ route('projects.edit', $project->id) }}" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                                    <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                                  </svg></a></div>

                                <div class="col-auto me-1">
                                  <form action="{{ route('projects.delete', $project->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                      <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                      <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                    </svg></button>
                                  </form>
                                </div>
                              </div>
                          </td>
                      </tr>
                  @endforeach
              </tbody>
          </table>
      </div>
  </div>
  <nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
      <li>{{ $projects->links() }}</li>
    </ul>
  </nav>

  </div>

  <div class="row credit">
    <div class="col-12">
      <div class="d-flex justify-content-end">
        <h1 class="fs-5">Created by:</h1>
      </div>
    </div>

    <div class="col-12">
      <div class="d-flex justify-content-end">
        <h1 class="fs-5"><b>Muhammad Jatmika Aryaputra</b></h1>
      </div>
    </div>
  </div>


</div>

@endsection