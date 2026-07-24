<?php

$srcDir = __DIR__ . '/resources/views/backend/akademik/guru';
$destDir = __DIR__ . '/resources/views/backend/pengguna/pengajar';

// Copy index
$indexContent = file_get_contents($srcDir . '/index.blade.php');
$indexContent = str_replace("route('guru.create')", "route('backend-pengguna-pengajar.create')", $indexContent);
$indexContent = str_replace("route('guru.edit'", "route('backend-pengguna-pengajar.edit'", $indexContent);
$indexContent = str_replace("route('guru.destroy'", "route('backend-pengguna-pengajar.destroy'", $indexContent);
file_put_contents($destDir . '/index.blade.php', $indexContent);

// Copy create
$createContent = file_get_contents($srcDir . '/create.blade.php');
$createContent = str_replace("route('guru.index')", "route('backend-pengguna-pengajar.index')", $createContent);
$createContent = str_replace("route('guru.store')", "route('backend-pengguna-pengajar.store')", $createContent);
file_put_contents($destDir . '/create.blade.php', $createContent);

// Copy edit
$editContent = file_get_contents($srcDir . '/edit.blade.php');
$editContent = str_replace("route('guru.index')", "route('backend-pengguna-pengajar.index')", $editContent);
$editContent = str_replace("route('guru.update'", "route('backend-pengguna-pengajar.update'", $editContent);
file_put_contents($destDir . '/edit.blade.php', $editContent);

echo "Views copied and routes updated!\n";
