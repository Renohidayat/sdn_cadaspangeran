<?php

namespace App\Http\Controllers\Backend\Akademik;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Nilai;

class NilaiController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('kelas_id')) {
            $kelas = \App\Models\Kelas::with('tahunAjaran')->findOrFail($request->kelas_id);
            $data = Nilai::with(['siswa', 'mataPelajaran', 'kelas', 'tahunAjaran'])
                        ->where('kelas_id', $request->kelas_id)
                        ->get();
            return view('backend.akademik.nilai.index', compact('data', 'kelas'));
        }

        $kelas_list = \App\Models\Kelas::with('tahunAjaran')->get();
        return view('backend.akademik.nilai.pilih_kelas', compact('kelas_list'));
    }

    public function create()
    {
        $siswa = \App\Models\Siswa::all();
        $mapel = \App\Models\MataPelajaran::all();
        $kelas = \App\Models\Kelas::all();
        $tahun_ajaran = \App\Models\TahunAjaran::where('is_active', 1)->get();
        return view('backend.akademik.nilai.create', compact('siswa', 'mapel', 'kelas', 'tahun_ajaran'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'siswa_id' => 'required|exists:siswas,id',
            'mata_pelajaran_id' => 'required|exists:mata_pelajarans,id',
            'kelas_id' => 'required|exists:kelas,id',
            'tahun_ajaran_id' => 'required|exists:tahun_ajarans,id',
            'jenis_nilai' => 'required|in:Tugas,UTS,UAS,Lainnya',
            'nilai' => 'required|numeric|min:0|max:100',
        ]);

        Nilai::create($request->all());
        return redirect()->route('nilai.index', ['kelas_id' => $request->kelas_id])->with('success', 'Nilai berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $data = Nilai::findOrFail($id);
        $siswa = \App\Models\Siswa::all();
        $mapel = \App\Models\MataPelajaran::all();
        $kelas = \App\Models\Kelas::all();
        $tahun_ajaran = \App\Models\TahunAjaran::all();
        return view('backend.akademik.nilai.edit', compact('data', 'siswa', 'mapel', 'kelas', 'tahun_ajaran'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'siswa_id' => 'required|exists:siswas,id',
            'mata_pelajaran_id' => 'required|exists:mata_pelajarans,id',
            'kelas_id' => 'required|exists:kelas,id',
            'tahun_ajaran_id' => 'required|exists:tahun_ajarans,id',
            'jenis_nilai' => 'required|in:Tugas,UTS,UAS,Lainnya',
            'nilai' => 'required|numeric|min:0|max:100',
        ]);

        $data = Nilai::findOrFail($id);
        $data->update($request->all());
        return redirect()->route('nilai.index', ['kelas_id' => $request->kelas_id])->with('success', 'Nilai berhasil diupdate.');
    }

    public function destroy($id)
    {
        $data = Nilai::findOrFail($id);
        $kelas_id = $data->kelas_id;
        $data->delete();
        return redirect()->route('nilai.index', ['kelas_id' => $kelas_id])->with('success', 'Nilai berhasil dihapus.');
    }
}
