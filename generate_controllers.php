<?php
$modules = [
    'TahunAjaran' => 'tahun-ajaran',
    'Kelas' => 'kelas',
    'Guru' => 'guru',
    'Siswa' => 'siswa',
    'MataPelajaran' => 'mata-pelajaran',
    'Jadwal' => 'jadwal',
    'Nilai' => 'nilai'
];

$base_dir = __DIR__ . '/app/Http/Controllers/Backend/Akademik';

foreach ($modules as $model => $folder) {
    $controller = $base_dir . '/' . $model . 'Controller.php';
    $content = "<?php\n\nnamespace App\\Http\\Controllers\\Backend\\Akademik;\n\nuse App\\Http\\Controllers\\Controller;\nuse Illuminate\\Http\\Request;\nuse App\\Models\\$model;\n\nclass {$model}Controller extends Controller\n{\n    public function index()
    {
        \$data = $model::all();
        return view('backend.akademik.$folder.index', compact('data'));
    }

    public function create()
    {
        return view('backend.akademik.$folder.create');
    }

    public function store(Request \$request)
    {
        // TODO
    }

    public function edit(\$id)
    {
        \$data = $model::findOrFail(\$id);
        return view('backend.akademik.$folder.edit', compact('data'));
    }

    public function update(Request \$request, \$id)
    {
        // TODO
    }

    public function destroy(\$id)
    {
        // TODO
    }
}\n";
    file_put_contents($controller, $content);
}

echo "Controllers generated.\n";
