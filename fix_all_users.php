<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

// Fix Siswa
$siswaUsers = App\Models\User::where('role', 'Siswa')->get();
$k = App\Models\Kelas::first();
foreach ($siswaUsers as $u) {
    if (!$u->siswa) {
        $s = new App\Models\Siswa();
        $s->user_id = $u->id;
        $s->nis = $u->username ?? rand(10000000, 99999999);
        $s->nama = $u->name;
        $s->jenis_kelamin = 'Laki-Laki';
        $s->kelas_id = $k ? $k->id : 1;
        $s->status = 'Aktif';
        $s->save();
    }
}

// Fix Guru
$guruUsers = App\Models\User::where('role', 'Guru')->get();
foreach ($guruUsers as $u) {
    if (!$u->guru) {
        $g = new App\Models\Guru();
        $g->user_id = $u->id;
        $g->nip = $u->username ?? rand(10000000, 99999999);
        $g->nama = $u->name;
        $g->jenis_kelamin = 'Laki-Laki';
        $g->telepon = '081234567890';
        $g->alamat = 'Alamat Guru';
        $g->save();
    }
}

echo "All users fixed!\n";
