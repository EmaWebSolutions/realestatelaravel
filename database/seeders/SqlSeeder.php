<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SqlSeeder extends Seeder
{
    public function run()
    {
        // Replace 'database.sql' with the path to your SQL file.
        $sql = file_get_contents(database_path('seeders/database.sql'));

        // Execute the SQL query.
        DB::unprepared($sql);
    }
}
