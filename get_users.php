<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

foreach(App\Models\User::with(['userDetail'])->get() as $u){
    $nip = optional($u->userDetail)->nip;
    $murid = App\Models\dataMurid::where('user_id', $u->id)->first();
    $tgl = optional($murid)->tgl_lahir;
    $spatieRoles = $u->roles->pluck('name')->implode(', ');
    echo "Role: {$u->role} | Email: {$u->email} | NIS/Username: {$u->username} | TglLahir: {$tgl}\n";
}
