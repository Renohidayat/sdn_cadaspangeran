<?php

namespace App\Http\Controllers\Backend\Akademik;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Jadwal;

class JadwalController extends Controller
{
    public function index()
    {
        $data = Jadwal::with(['kelas', 'mataPelajaran', 'guru'])->get();
        return view('backend.akademik.jadwal.index', compact('data'));
    }

    public function create()
    {
        $kelas = \App\Models\Kelas::all();
        $mapel = \App\Models\MataPelajaran::all();
        $guru = \App\Models\Guru::all();
        return view('backend.akademik.jadwal.create', compact('kelas', 'mapel', 'guru'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'kelas_id' => 'required|exists:kelas,id',
            'mata_pelajaran_id' => 'required|exists:mata_pelajarans,id',
            'guru_id' => 'required|exists:gurus,id',
            'hari' => 'required|in:Senin,Selasa,Rabu,Kamis,Jumat,Sabtu',
            'jam_mulai' => 'required',
            'jam_selesai' => 'required',
        ]);

        Jadwal::create($request->all());
        return redirect()->route('jadwal.index')->with('success', 'Jadwal berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $data = Jadwal::findOrFail($id);
        $kelas = \App\Models\Kelas::all();
        $mapel = \App\Models\MataPelajaran::all();
        $guru = \App\Models\Guru::all();
        return view('backend.akademik.jadwal.edit', compact('data', 'kelas', 'mapel', 'guru'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'kelas_id' => 'required|exists:kelas,id',
            'mata_pelajaran_id' => 'required|exists:mata_pelajarans,id',
            'guru_id' => 'required|exists:gurus,id',
            'hari' => 'required|in:Senin,Selasa,Rabu,Kamis,Jumat,Sabtu',
            'jam_mulai' => 'required',
            'jam_selesai' => 'required',
        ]);

        $data = Jadwal::findOrFail($id);
        $data->update($request->all());
        return redirect()->route('jadwal.index')->with('success', 'Jadwal berhasil diupdate.');
    }

    public function destroy($id)
    {
        $data = Jadwal::findOrFail($id);
        $data->delete();
        return redirect()->route('jadwal.index')->with('success', 'Jadwal berhasil dihapus.');
    }
}
