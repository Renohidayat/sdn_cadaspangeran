<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

if (class_exists('App\\Models\\ProfileSekolah')) {
    $p = App\Models\ProfileSekolah::first();
    if ($p) {
        // Just dump to see what columns exist
        echo json_encode($p);
    }
}
