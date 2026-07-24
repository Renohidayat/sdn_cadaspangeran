<?php

$srcFile = __DIR__ . '/app/Http/Controllers/Backend/Akademik/GuruController.php';
$destFile = __DIR__ . '/app/Http/Controllers/Backend/Pengguna/PengajarController.php';

$content = file_get_contents($srcFile);

// Update namespace
$content = str_replace('namespace App\Http\Controllers\Backend\Akademik;', 'namespace App\Http\Controllers\Backend\Pengguna;', $content);

// Update class name
$content = str_replace('class GuruController extends Controller', 'class PengajarController extends Controller', $content);

// Update view paths
$content = str_replace("view('backend.akademik.guru.index'", "view('backend.pengguna.pengajar.index'", $content);
$content = str_replace("view('backend.akademik.guru.create'", "view('backend.pengguna.pengajar.create'", $content);
$content = str_replace("view('backend.akademik.guru.edit'", "view('backend.pengguna.pengajar.edit'", $content);

// Update route redirects
$content = str_replace("route('guru.index')", "route('backend-pengguna-pengajar.index')", $content);

file_put_contents($destFile, $content);

echo "Controller copied!\n";
