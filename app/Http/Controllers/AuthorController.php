<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Author;
use App\Book;

class AuthorController extends Controller
{
    public function index()
    {
        $authors = Author::get();

        return view('authors.index', compact('authors'));
    }

    public function create()
    {
        return view('authors.create');
    }

    public function store()
    {
        request()->validate([
            'name' => 'required | max:191',
            'age' => 'required | numeric | min:16 | max:99',
            'address' => 'required | max:191 | min:5',
            'book_name' => 'required | max:191 | min:5',
            'release_date' => 'required | date | before:tomorrow'
        ]);
        $author = Author::create([
            'name' => request('name'),
            'age' => request('age'),
            'address' => request('address')
        ]);

        Book::create([
            'name' => request('book_name'),
            'release_date' => request('release_date'),
            'author_id' => $author->id
        ]);

        return redirect('/authors');
    }
}
