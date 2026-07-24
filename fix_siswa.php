<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

$u = App\Models\User::where('username','12345678')->first();
$m = new App\Models\dataMurid();
$m->user_id = $u->id;
$m->nis = '12345678';
$m->tgl_lahir = '2000-01-01';
$m->save();

echo "Fixed!\n";
