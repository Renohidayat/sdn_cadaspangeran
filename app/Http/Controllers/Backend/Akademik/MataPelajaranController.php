<?php

namespace App\Http\Controllers\Backend\Akademik;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MataPelajaran;

class MataPelajaranController extends Controller
{
    public function index()
    {
        $data = MataPelajaran::all();
        return view('backend.akademik.mata-pelajaran.index', compact('data'));
    }

    public function create()
    {
        return view('backend.akademik.mata-pelajaran.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'kode_mapel' => 'required|string|max:50|unique:mata_pelajarans,kode_mapel',
            'nama_mapel' => 'required|string|max:255',
        ]);

        MataPelajaran::create($request->all());
        return redirect()->route('mata-pelajaran.index')->with('success', 'Mata Pelajaran berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $data = MataPelajaran::findOrFail($id);
        return view('backend.akademik.mata-pelajaran.edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'kode_mapel' => 'required|string|max:50|unique:mata_pelajarans,kode_mapel,' . $id,
            'nama_mapel' => 'required|string|max:255',
        ]);

        $data = MataPelajaran::findOrFail($id);
        $data->update($request->all());
        return redirect()->route('mata-pelajaran.index')->with('success', 'Mata Pelajaran berhasil diupdate.');
    }

    public function destroy($id)
    {
        $data = MataPelajaran::findOrFail($id);
        $data->delete();
        return redirect()->route('mata-pelajaran.index')->with('success', 'Mata Pelajaran berhasil dihapus.');
    }
}
