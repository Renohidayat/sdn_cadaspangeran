<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

$u = App\Models\User::create([
    'name' => 'Siswa Test',
    'email' => 'siswa_test@sch.id',
    'username' => '87654321',
    'role' => 'Siswa',
    'status' => 'Aktif',
    'password' => bcrypt('2000-01-01')
]);

$u->assignRole('Siswa');

$m = new App\Models\dataMurid();
$m->user_id = $u->id;
$m->nis = '87654321';
$m->tgl_lahir = '2000-01-01';
$m->save();

echo "Created Siswa: NIS=12345678, Pass=2000-01-01\n";
