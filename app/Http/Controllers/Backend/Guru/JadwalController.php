<?php

namespace App\Http\Controllers\Backend\Guru;

use App\Http\Controllers\Controller;
use App\Models\Jadwal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JadwalController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $guru = $user->guru; // Assuming User has one Guru relation

        if (!$guru) {
            return redirect()->back()->with('error', 'Data Guru tidak ditemukan.');
        }

        $data = Jadwal::with(['kelas', 'mataPelajaran'])
                    ->where('guru_id', $guru->id)
                    ->get();

        return view('backend.guru.jadwal.index', compact('data'));
    }
}
