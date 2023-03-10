@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">
      <div class="col">
          <table class="table">
              <thead>
                  <tr>
                      <th scope="col">#</th>
                      <th scope="col">img</th>
                      <th scope="col">Name</th>
                      <th scope="col">Price</th>
                      <th scope="col">Description</th>
                      <th scope="col">Stock</th>
                      <th scope="col">Action</th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <th scope="row">{{ $item->id }}</th>
                      <td><img src="https://picsum.photos/300/200?random={{ $item->id }}" alt="" width="100px"></td>
                      <td>{{ $item->name }}</td>
                      <td>{{ $item->price }}</td>
                      <td>{{ $item->description }}</td>
                      <td>{{ $item->stock }}</td>
                      <td>
                          <a href="{{ route('items.edit', $item->id) }}" class="btn btn-primary">Edit</a>
                          <a href="{{ route('items.delete', $item->id) }}" class="btn btn-danger">Delete</a>
                      </td>
                  </tr>
              </tbody>
          </table>
      </div>
  </div>
</div>
  
@endsection