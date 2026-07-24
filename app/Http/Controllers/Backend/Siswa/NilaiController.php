<?php

namespace App\Http\Controllers\Backend\Siswa;

use App\Http\Controllers\Controller;
use App\Models\Nilai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NilaiController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $siswa = $user->siswa;

        if (!$siswa) {
            return redirect()->back()->with('error', 'Data Siswa tidak ditemukan.');
        }

        $data = Nilai::with(['mataPelajaran', 'tahunAjaran', 'kelas'])
                    ->where('siswa_id', $siswa->id)
                    ->get();

        return view('backend.siswa.nilai.index', compact('data'));
    }
}
