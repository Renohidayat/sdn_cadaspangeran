<?php

require __DIR__.'/vendor/autoload.php';
$app = require_once __DIR__.'/bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\Guru;
use App\Models\User;

$gurus = Guru::all();
foreach ($gurus as $guru) {
    echo "ID: " . $guru->id . " | Nama: " . $guru->nama . "\n";
}

echo "\nUsers with role Guru:\n";
$users = User::where('role', 'Guru')->get();
foreach ($users as $user) {
    echo "ID: " . $user->id . " | Name: " . $user->name . "\n";
}

