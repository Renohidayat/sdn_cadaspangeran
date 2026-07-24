<?php

namespace App\Http\Controllers\Backend\Guru;

use App\Http\Controllers\Controller;
use App\Models\Nilai;
use App\Models\Jadwal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NilaiController extends Controller
{
    public function index(Request $request)
    {
        $user = Auth::user();
        $guru = $user->guru;

        if (!$guru) {
            return redirect()->back()->with('error', 'Data Guru tidak ditemukan.');
        }

        // Get Jadwal to know which mapel and kelas this guru teaches
        $jadwal = Jadwal::with('kelas.tahunAjaran')->where('guru_id', $guru->id)->get();
        $mapel_ids = $jadwal->pluck('mata_pelajaran_id')->unique();
        $kelas_list = $jadwal->pluck('kelas')->unique('id');
        $kelas_ids = $kelas_list->pluck('id');

        if ($request->has('kelas_id')) {
            $kelas = \App\Models\Kelas::with('tahunAjaran')->findOrFail($request->kelas_id);
            
            // Ensure the teacher actually teaches this class
            if (!$kelas_ids->contains($kelas->id)) {
                return redirect()->route('guru.nilai.index')->with('error', 'Anda tidak mengajar di kelas ini.');
            }

            $data = Nilai::with(['siswa', 'mataPelajaran', 'kelas', 'tahunAjaran'])
                        ->whereIn('mata_pelajaran_id', $mapel_ids)
                        ->where('kelas_id', $request->kelas_id)
                        ->get();

            return view('backend.guru.nilai.index', compact('data', 'kelas'));
        }

        return view('backend.guru.nilai.pilih_kelas', compact('kelas_list'));
    }

    public function create()
    {
        $user = Auth::user();
        $guru = $user->guru;

        if (!$guru) {
            return redirect()->back()->with('error', 'Data Guru tidak ditemukan.');
        }

        $jadwal = Jadwal::with(['kelas', 'mataPelajaran'])->where('guru_id', $guru->id)->get();
        $mapel = $jadwal->pluck('mataPelajaran')->unique('id');
        $kelas = $jadwal->pluck('kelas')->unique('id');

        $siswa = \App\Models\Siswa::whereIn('kelas_id', $kelas->pluck('id'))->get();
        $tahun_ajaran = \App\Models\TahunAjaran::where('is_active', 1)->get();

        return view('backend.guru.nilai.create', compact('siswa', 'mapel', 'kelas', 'tahun_ajaran'));
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
        return redirect()->route('guru.nilai.index', ['kelas_id' => $request->kelas_id])->with('success', 'Nilai berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $data = Nilai::findOrFail($id);
        $user = Auth::user();
        $guru = $user->guru;

        $jadwal = Jadwal::with(['kelas', 'mataPelajaran'])->where('guru_id', $guru->id)->get();
        $mapel = $jadwal->pluck('mataPelajaran')->unique('id');
        $kelas = $jadwal->pluck('kelas')->unique('id');

        $siswa = \App\Models\Siswa::whereIn('kelas_id', $kelas->pluck('id'))->get();
        $tahun_ajaran = \App\Models\TahunAjaran::all();

        return view('backend.guru.nilai.edit', compact('data', 'siswa', 'mapel', 'kelas', 'tahun_ajaran'));
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
        return redirect()->route('guru.nilai.index', ['kelas_id' => $request->kelas_id])->with('success', 'Nilai berhasil diupdate.');
    }

    public function destroy($id)
    {
        $data = Nilai::findOrFail($id);
        $kelas_id = $data->kelas_id;
        $data->delete();
        return redirect()->route('guru.nilai.index', ['kelas_id' => $kelas_id])->with('success', 'Nilai berhasil dihapus.');
    }
}
