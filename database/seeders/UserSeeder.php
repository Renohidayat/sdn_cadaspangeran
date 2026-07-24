<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

         $user = User::create([
            'name'      => 'Kepala Sekolah',
            'username'  => 'kepsek',
            'email'     => 'kepsek@sch.id',
            'role'      => 'Admin',
            'status'    => 'Aktif',
            'password'  => bcrypt('Bismillah')
        ]);
        $user->assignRole('Admin');
        $this->command->info('Data User '.$user->name.' has been saved.');

        $guru = User::create([
            'name'      => 'Guru SD Cadas Pangeran',
            'username'  => 'guru',
            'email'     => 'guru@sch.id',
            'role'      => 'Guru',
            'status'    => 'Aktif',
            'password'  => bcrypt('Bismillah')
        ]);
        $guru->assignRole('Guru');
        $this->command->info('Data User '.$guru->name.' has been saved.');

        $siswa = User::create([
            'name'      => 'Siswa SD Cadas Pangeran',
            'username'  => 'siswa',
            'email'     => 'siswa@sch.id',
            'role'      => 'Siswa',
            'status'    => 'Aktif',
            'password'  => bcrypt('Bismillah')
        ]);
        $siswa->assignRole('Siswa');
        $this->command->info('Data User '.$siswa->name.' has been saved.');
       
    }
}
