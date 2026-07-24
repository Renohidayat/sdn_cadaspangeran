<?php

$srcFile = __DIR__ . '/app/Http/Controllers/Backend/Akademik/SiswaController.php';
$destFile = __DIR__ . '/app/Http/Controllers/Backend/Pengguna/MuridController.php';

$content = file_get_contents($srcFile);

// Update namespace
$content = str_replace('namespace App\Http\Controllers\Backend\Akademik;', 'namespace App\Http\Controllers\Backend\Pengguna;', $content);

// Update class name
$content = str_replace('class SiswaController extends Controller', 'class MuridController extends Controller', $content);

// Update view paths
$content = str_replace("view('backend.akademik.siswa.index'", "view('backend.pengguna.murid.index'", $content);
$content = str_replace("view('backend.akademik.siswa.create'", "view('backend.pengguna.murid.create'", $content);
$content = str_replace("view('backend.akademik.siswa.edit'", "view('backend.pengguna.murid.edit'", $content);

// Update route redirects
$content = str_replace("route('siswa.index')", "route('backend-pengguna-murid.index')", $content);

file_put_contents($destFile, $content);

echo "MuridController copied!\n";
