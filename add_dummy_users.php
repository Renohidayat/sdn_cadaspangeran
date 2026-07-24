<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\User;
use App\Models\UsersDetail;
use Illuminate\Support\Facades\Hash;

// 1. Add Dummy Pengajar (Guru)
$guru = User::create([
    'name'      => 'Dummy Guru',
    'username'  => 'dummy_guru' . time(),
    'email'     => 'guru_dummy' . time() . '@sch.id',
    'role'      => 'Guru',
    'status'    => 'Aktif',
    'password'  => Hash::make('12345678')
]);
$guru->assignRole('Guru');

$guruDetail = new UsersDetail();
$guruDetail->user_id = $guru->id;
$guruDetail->role = 'Guru';
$guruDetail->mengajar = 'Matematika';
$guruDetail->nip = '198001012005011001';
$guruDetail->email = $guru->email;
$guruDetail->save();
echo "Dummy Guru added.\n";

// 2. Add Dummy Staf (Admin)
$staf = User::create([
    'name'      => 'Dummy Staf',
    'username'  => 'dummy_staf' . time(),
    'email'     => 'staf_dummy' . time() . '@sch.id',
    'role'      => 'Staf',
    'status'    => 'Aktif',
    'password'  => Hash::make('12345678')
]);
$staf->assignRole('Admin'); // Usually staf has admin role or staf role

$stafDetail = new UsersDetail();
$stafDetail->user_id = $staf->id;
$stafDetail->role = 'Staf';
$stafDetail->nip = '199001012015011002';
$stafDetail->email = $staf->email;
$stafDetail->save();
echo "Dummy Staf added.\n";

// 3. Add Dummy Murid (Siswa)
$siswa = User::create([
    'name'      => 'Dummy Siswa',
    'username'  => 'dummy_siswa' . time(),
    'email'     => 'siswa_dummy' . time() . '@sch.id',
    'role'      => 'Siswa',
    'status'    => 'Aktif',
    'password'  => Hash::make('12345678')
]);
$siswa->assignRole('Siswa');

$siswaDetail = new UsersDetail();
$siswaDetail->user_id = $siswa->id;
$siswaDetail->role = 'Murid';
$siswaDetail->nip = '20230001';
$siswaDetail->email = $siswa->email;
$siswaDetail->save();
echo "Dummy Siswa added.\n";
