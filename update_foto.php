<?php

require __DIR__.'/vendor/autoload.php';
$app = require_once __DIR__.'/bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\Guru;
use App\Models\User;

$gurus = Guru::all();
foreach($gurus as $guru) {
    $foto = ($guru->jenis_kelamin == 'Laki-laki' || $guru->jenis_kelamin == 'L') ? 'guru_laki.png' : 'guru_perempuan.png';
    $user = $guru->user;
    if($user) {
        $user->update(['foto_profile' => $foto]);
    }
}

// Update also for siswas just in case, but using the avatar.png or something else, or leave it.
echo "Foto profil guru berhasil diupdate.\n";
