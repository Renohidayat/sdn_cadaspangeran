<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class UpdateUserRoleEnum extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("ALTER TABLE users MODIFY COLUMN role ENUM('Admin', 'Guru', 'Siswa', 'Staf', 'PPDB', 'Perpustakaan', 'Bendahara', 'Guest', 'Alumni')");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("ALTER TABLE users MODIFY COLUMN role ENUM('Admin', 'Guru', 'Siswa')");
    }
}
