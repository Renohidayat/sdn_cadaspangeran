<?php

$indexControllerPath = __DIR__ . '/app/Http/Controllers/Frontend/IndexController.php';
if (file_exists($indexControllerPath)) {
    $content = file_get_contents($indexControllerPath);
    $content = preg_replace('/\$jurusanM = Jurusan::where.*?get\(\);/s', '', $content);
    $content = str_replace("use App\Models\Jurusan;", '', $content);
    file_put_contents($indexControllerPath, $content);
    echo "IndexController fixed.\n";
}

$menuControllerPath = __DIR__ . '/app/Http/Controllers/Frontend/MenuController.php';
if (file_exists($menuControllerPath)) {
    $content = file_get_contents($menuControllerPath);
    $content = preg_replace('/\$jurusanM = Jurusan::where.*?get\(\);/s', '', $content);
    $content = str_replace("use App\Models\Jurusan;", '', $content);
    file_put_contents($menuControllerPath, $content);
    echo "MenuController fixed.\n";
}

$headerViewPath = __DIR__ . '/resources/views/frontend/content/header.blade.php';
if (file_exists($headerViewPath)) {
    $content = file_get_contents($headerViewPath);
    $content = preg_replace('/<li class="has-child-menu"><a href="#">Program Studi<\/a>.*?<\/ul>\s*<\/li>/s', '', $content);
    file_put_contents($headerViewPath, $content);
    echo "header.blade.php fixed.\n";
}

echo "Done.\n";
