<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\User;
use App\Models\dataMurid;
use App\Models\UsersDetail;
use Illuminate\Support\Facades\Hash;

echo "Updating passwords...\n";

$users = User::all();
foreach($users as $user) {
    if (in_array($user->role, ['Admin', 'Guru', 'Staf'])) {
        $detail = UsersDetail::where('user_id', $user->id)->first();
        if ($detail && $detail->nip) {
            $user->password = Hash::make($detail->nip);
            $user->save();
            echo "Updated {$user->role} {$user->name} password to NIP {$detail->nip}\n";
        } else {
            echo "Skipping {$user->role} {$user->name}, no NIP found.\n";
        }
    } elseif (in_array($user->role, ['Siswa', 'Murid', 'Guest'])) {
        $murid = dataMurid::where('user_id', $user->id)->first();
        if ($murid) {
            $passwordToUse = $murid->tgl_lahir ?? $murid->nis;
            if ($passwordToUse) {
                $user->password = Hash::make($passwordToUse);
                // Also make sure their username is set to their NIS so they can login
                if ($murid->nis) {
                    $user->username = $murid->nis;
                }
                $user->save();
                echo "Updated Siswa {$user->name} password to {$passwordToUse}\n";
            } else {
                echo "Skipping Siswa {$user->name}, no tgl_lahir or NIS found.\n";
            }
        } else {
             echo "Skipping Siswa {$user->name}, no dataMurid record.\n";
        }
    }
}

echo "Password update complete.\n";
