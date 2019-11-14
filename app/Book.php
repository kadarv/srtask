<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $guarded = ['book_name'];

    public function author()
    {
        return $this->belongsTo(Author::class);
    }
}
