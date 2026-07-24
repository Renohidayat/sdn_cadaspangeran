<?php

namespace App\Http\Controllers\Backend\Akademik;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Kelas;

class KelasController extends Controller
{
    public function index()
    {
        $data = Kelas::with(['tahunAjaran', 'waliKelas'])->get();
        return view('backend.akademik.kelas.index', compact('data'));
    }

    public function create()
    {
        $tahun_ajaran = \App\Models\TahunAjaran::where('is_active', 1)->get();
        $guru = \App\Models\Guru::all();
        return view('backend.akademik.kelas.create', compact('tahun_ajaran', 'guru'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_kelas' => 'required|string|max:255',
            'tahun_ajaran_id' => 'required|exists:tahun_ajarans,id',
            'wali_kelas_id' => 'nullable|exists:gurus,id',
        ]);

        Kelas::create($request->all());
        return redirect()->route('kelas.index')->with('success', 'Kelas berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $data = Kelas::findOrFail($id);
        $tahun_ajaran = \App\Models\TahunAjaran::all();
        $guru = \App\Models\Guru::all();
        return view('backend.akademik.kelas.edit', compact('data', 'tahun_ajaran', 'guru'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_kelas' => 'required|string|max:255',
            'tahun_ajaran_id' => 'required|exists:tahun_ajarans,id',
            'wali_kelas_id' => 'nullable|exists:gurus,id',
        ]);

        $data = Kelas::findOrFail($id);
        $data->update($request->all());
        return redirect()->route('kelas.index')->with('success', 'Kelas berhasil diupdate.');
    }

    public function destroy($id)
    {
        $data = Kelas::findOrFail($id);
        $data->delete();
        return redirect()->route('kelas.index')->with('success', 'Kelas berhasil dihapus.');
    }
}
