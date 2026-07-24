<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

$u = App\Models\User::where('username','12345678')->first();
$k = App\Models\Kelas::first();

$s = App\Models\Siswa::firstOrNew(['user_id' => $u->id]);
$s->nis = '12345678';
$s->nama = 'Siswa Test';
$s->jenis_kelamin = 'Laki-Laki';
$s->kelas_id = $k ? $k->id : 1;
$s->status = 'Aktif';
$s->save();

echo "Siswa record created!\n";
