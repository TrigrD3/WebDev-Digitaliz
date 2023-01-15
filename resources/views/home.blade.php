@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    {{-- make card button --}}
                    <div class="row">
                        <div class="col">
                            <a href="{{ route('projects.create') }}" class="btn btn-primary">Create Project</a>
                        </div>

                        <div class="col">
                            <a href="{{ route('projects') }}" class="btn btn-primary">Show Projects</a>
                        </div>
                    {{-- end make card button --}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
