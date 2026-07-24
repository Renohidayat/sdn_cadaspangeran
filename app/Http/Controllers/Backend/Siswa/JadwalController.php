<?php

namespace App\Http\Controllers\Backend\Siswa;

use App\Http\Controllers\Controller;
use App\Models\Jadwal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JadwalController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $siswa = $user->siswa;

        if (!$siswa) {
            return redirect()->back()->with('error', 'Data Siswa tidak ditemukan.');
        }

        $data = Jadwal::with(['mataPelajaran', 'guru'])
                    ->where('kelas_id', $siswa->kelas_id)
                    ->get();

        return view('backend.siswa.jadwal.index', compact('data'));
    }
}
