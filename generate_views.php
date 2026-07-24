<?php
$modules = [
    'tahun-ajaran' => 'Tahun Ajaran',
    'kelas' => 'Kelas',
    'guru' => 'Guru',
    'siswa' => 'Siswa',
    'mata-pelajaran' => 'Mata Pelajaran',
    'jadwal' => 'Jadwal',
    'nilai' => 'Nilai'
];

$base_dir = __DIR__ . '/resources/views/backend/akademik';
if (!is_dir($base_dir)) {
    mkdir($base_dir, 0777, true);
}

foreach ($modules as $folder => $title) {
    $dir = $base_dir . '/' . $folder;
    if (!is_dir($dir)) {
        mkdir($dir, 0777, true);
    }

    $indexContent = "@extends('layouts.backend.app')\n\n@section('title')\n    $title\n@endsection\n\n@section('content')\n    <div class=\"content-wrapper container-xxl p-0\">\n        <div class=\"content-header row\">\n            <div class=\"content-header-left col-md-9 col-12 mb-2\">\n                <div class=\"row breadcrumbs-top\">\n                    <div class=\"col-12\">\n                        <h2> $title</h2>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"content-body\">\n            <div class=\"row\">\n                <div class=\"col-12\">\n                    <div class=\"card\">\n                        <div class=\"card-header border-bottom\">\n                            <h4 class=\"card-title\">Data $title <a href=\"{{ route('$folder.create') }}\" class=\"btn btn-primary\">Tambah</a></h4>\n                        </div>\n                        <div class=\"card-body\">\n                            <p>TODO: Table goes here</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n@endsection";

    file_put_contents($dir . '/index.blade.php', $indexContent);
    file_put_contents($dir . '/create.blade.php', "@extends('layouts.backend.app')\n@section('title', 'Tambah $title')\n@section('content')\n<div class='content-wrapper container-xxl p-0'>\n<h2>Tambah $title</h2>\n</div>\n@endsection");
    file_put_contents($dir . '/edit.blade.php', "@extends('layouts.backend.app')\n@section('title', 'Edit $title')\n@section('content')\n<div class='content-wrapper container-xxl p-0'>\n<h2>Edit $title</h2>\n</div>\n@endsection");
}

echo "Views generated.";
