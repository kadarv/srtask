@extends('layout')
@section('content')

<div class="container-fluid">
    <h1 class="font-weight-light">Add a new author and book:</h1>
<form method="POST" action="/authors">
    @csrf
    <div class="col-md-4 mb-2">
        <label for="name">Name: </label>
        <input type="text" name="name" id="name" class="form-control" placeholder="e.g. Mark Twain" value="{{old('name')}}" required>
        @if($errors->has('name'))
            <div class="invalid-feedback d-block">{{$errors->first('name')}}</div>
        @endif
    </div>

    <div class="col-md-2 mb-2">
        <label for="age">Age: </label>
        <input type="number" name="age" id="age" class="form-control" min="16" oninput="this.value = Math.abs(this.value)" placeholder="e.g. 75" value="{{old('age')}}" required>
        @if($errors->has('age'))
            <div class="invalid-feedback d-block">{{$errors->first('age')}}</div>
        @endif
    </div>

    <div class="col-md-4 mb-2">
        <label for="address">Address: </label>
        <input type="text" name="address" id="address" class="form-control" placeholder="e.g. Donau City Straße 1, Vienna" value="{{old('address')}}" required>
        @if($errors->has('address'))
            <div class="invalid-feedback d-block">{{$errors->first('address')}}</div>
        @endif
    </div>

    <div class="col-md-4 mb-2">
        <label for="book_name">Book title: </label>
        <input type="text" name="book_name" id="book_name" class="form-control" placeholder="e.g. How to hire the best developers" value="{{old('book_name')}}" required>
        @if($errors->has('book_name'))
            <div class="invalid-feedback d-block">{{$errors->first('book_name')}}</div>
        @endif
    </div>

    <div class="col-md-2 mb-2">
        <label for="release_date">Release date: </label>
        <input type="date" name="release_date" id="release_date" class="form-control" value="{{old('release_date')}}" required>
        @if($errors->has('release_date'))
            <div class="invalid-feedback d-block">{{$errors->first('release_date')}}</div>
        @endif
    </div>

    <input type="submit" class="btn btn-info col-md-4">

</form>
</div>


@endsection
