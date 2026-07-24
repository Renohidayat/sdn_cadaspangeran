<?php

require __DIR__.'/vendor/autoload.php';
$app = require_once __DIR__.'/bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\Guru;
use App\Models\Jadwal;
use App\Models\Kelas;

$names = ['M Reno Hidayat', 'M. Reno Hidayat', 'Guru SD Cadaspangeran', 'guru sd cadaspangeran'];

foreach ($names as $name) {
    $gurus = Guru::where('nama', 'LIKE', '%' . $name . '%')->get();
    foreach ($gurus as $guru) {
        // Nullify Wali Kelas if applicable
        Kelas::where('wali_kelas_id', $guru->id)->update(['wali_kelas_id' => null]);
        
        // Delete Jadwals associated with this Guru
        Jadwal::where('guru_id', $guru->id)->delete();
        
        // Delete User
        if ($guru->user) {
            $guru->user->delete();
        }
        
        // Delete Guru
        $guru->delete();
        
        echo "Berhasil menghapus guru: " . $guru->nama . "\n";
    }
}

echo "Selesai.\n";
