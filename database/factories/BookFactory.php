<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Book;
use App\Author;
use Faker\Generator as Faker;

$factory->define(Book::class, function (Faker $faker) {
    return [
        'author_id' => Author::all()->random()->id,
        'name' => $faker->text($maxNbChars = 20),
        'release_date' => $faker->date($format = 'Y-m-d', $max = 'now')
    ];
});
