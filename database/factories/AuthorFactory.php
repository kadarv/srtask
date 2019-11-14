<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Author;
use Faker\Generator as Faker;

$factory->define(Author::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'age' => $faker->numberBetween($min = 18, $max = 95),
        'address' => $faker->address
    ];
});
