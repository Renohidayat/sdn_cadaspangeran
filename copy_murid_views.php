<?php

$srcDir = __DIR__ . '/resources/views/backend/akademik/siswa';
$destDir = __DIR__ . '/resources/views/backend/pengguna/murid';

if(!is_dir($destDir)) {
    mkdir($destDir, 0777, true);
}

// Copy index
$indexContent = file_get_contents($srcDir . '/index.blade.php');
$indexContent = str_replace("route('siswa.create')", "route('backend-pengguna-murid.create')", $indexContent);
$indexContent = str_replace("route('siswa.edit'", "route('backend-pengguna-murid.edit'", $indexContent);
$indexContent = str_replace("route('siswa.destroy'", "route('backend-pengguna-murid.destroy'", $indexContent);
file_put_contents($destDir . '/index.blade.php', $indexContent);

// Copy create
$createContent = file_get_contents($srcDir . '/create.blade.php');
$createContent = str_replace("route('siswa.index')", "route('backend-pengguna-murid.index')", $createContent);
$createContent = str_replace("route('siswa.store')", "route('backend-pengguna-murid.store')", $createContent);
file_put_contents($destDir . '/create.blade.php', $createContent);

// Copy edit
$editContent = file_get_contents($srcDir . '/edit.blade.php');
$editContent = str_replace("route('siswa.index')", "route('backend-pengguna-murid.index')", $editContent);
$editContent = str_replace("route('siswa.update'", "route('backend-pengguna-murid.update'", $editContent);
file_put_contents($destDir . '/edit.blade.php', $editContent);

echo "Views copied and routes updated for Murid!\n";
