@extends('layout')
@section('content')
<div class="container-fluid">
    <button class="btn btn-info btn-lg" data-toggle="collapse" data-target="#collapse">Show Data</button>
    <a href="authors/create" role="button" class="btn btn-info btn-lg">Add a new author and book!</a>
    <button class="btn btn-info btn-lg" value="Refresh Page" onClick="window.location.reload();"><i class="fa fa-refresh" aria-hidden="true"></i></button>
</div>
<br>
<div id="collapse" class="collapse">
    <div class="row container">

        <div class="col-4">
            <div class="list-group" id="list-tab" role="tablist">
                @foreach($authors as $author)
                    <a class="list-group-item list-group-item-action font-weight-light text-white bg-info border-white" id="list-{{$author->id}}-list" data-toggle="list" href="#list-{{$author->id}}" role="tab" aria-controls="{{$author->id}}"><span class="font-weight-light">{{$author->name}}</span></a>
                @endforeach
            </div>
        </div>

        <div class="col-8">
            <div class="tab-content" id="nav-tabContent">
                @foreach($authors as $author)
                    <div class="tab-pane fade show" id="list-{{$author->id}}" role="tabpanel" aria-labelledby="list-{{$author->id}}-list">
                        <h1 class="font-weight-light text-center">{{$author->name}}</h1>
                        <h2 class="font-weight-light">Age: {{$author->age}}</h2><hr>
                        <h2 class="font-weight-light">Address: {{$author->address}}</h2>
                        <hr>
                        @if($author->books->count() > 1)
                            <h2 class="font-weight-light">Known books:</h2>
                        @endif

                        @if($author->books->count() === 1)
                            <h2 class="font-weight-light">Known book:</h2>
                        @endif

                        @if($author->books->count() !== 0)
                            @foreach ($author->books as $book)
                                <blockquote class="blockquote">
                                    <p class="mb-0">{{$book->name}}</p>
                                    <footer class="blockquote-footer">{{$book->release_date}}</footer>
                                </blockquote><hr>
                            @endforeach
                        @endif
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection

