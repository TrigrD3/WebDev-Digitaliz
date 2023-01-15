<?php

namespace Database\Seeders;

use App\Models\Project;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProjectsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i = 0; $i < 50; $i++) {
            $project = new Project();
            $project->project_name = $faker->words(2, true);
            $project->client = $faker->company;
            $project->projects_leader = $faker->numberBetween(1, 2);
            $project->start_date = $faker->dateTimeBetween('-5 years', 'now');
            $project->end_date = $faker->dateTimeBetween('now', '+5 years');
            $project->progress = $faker->numberBetween(0, 100);
            $project->save();
        }
    }
}
