<?php

require __DIR__.'/vendor/autoload.php';
$app = require_once __DIR__.'/bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\User;

User::whereIn('id', [2, 4])->delete();
echo "Berhasil menghapus sisa akun user Guru SD Cadas Pangeran dan M. Reno Hidayat.\n";
