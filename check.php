<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

$roles = Spatie\Permission\Models\Role::pluck('name')->toArray();

echo "Role Spatie di database: " . implode(', ', $roles) . "\n";
