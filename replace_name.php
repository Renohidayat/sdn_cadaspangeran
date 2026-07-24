<?php
$files = [
    'resources/views/layouts/backend/app.blade.php',
    'resources/views/frontend/welcome.blade.php',
    'resources/views/auth/login.blade.php',
    'resources/views/auth/login_hub.blade.php'
];

foreach ($files as $file) {
    $path = __DIR__ . '/' . $file;
    if (file_exists($path)) {
        $content = file_get_contents($path);
        $content = str_ireplace('SekolahKu', 'SD Negri Cadaspangeran', $content);
        file_put_contents($path, $content);
        echo "Replaced in $file\n";
    }
}
