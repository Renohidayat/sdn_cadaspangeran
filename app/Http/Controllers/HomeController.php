<?php

namespace App\Http\Controllers;

use App\Models\Events;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $role = Auth::user()->role;

        if (Auth::check()) {
            // DASHBOARD ADMIN & STAF \\
            if (in_array($role, ['Admin', 'Staf'])) {
              $guru = User::where('role','Guru')->where('status','Aktif')->count();
              $siswa = User::where('role','Siswa')->where('status','Aktif')->count();
              $kelas = \App\Models\Kelas::count();
              $acara = Events::where('is_active','0')->count();
              $event = Events::where('is_active','0')->orderBy('created_at','desc')->first();
              $berita = \App\Models\Berita::count();
              $pendaftar = \App\Models\Pendaftaran::count();

              return view('backend.website.home', compact('guru','siswa','kelas','event','acara','berita','pendaftar'));
            }
            elseif ($role == 'Guru') {
                $jadwal = \App\Models\Jadwal::where('guru_id', Auth::user()->id)->count();
                $event = Events::where('is_active','0')->orderBy('created_at','desc')->first();
                return view('backend.guru.home', compact('jadwal', 'event'));
            }
            elseif (in_array($role, ['Siswa', 'Murid'])) {
                // Find class
                $kelas = 'Belum memiliki kelas';
                if (isset(Auth::user()->siswa)) {
                    $kelas = Auth::user()->siswa->kelas->nama_kelas ?? 'Belum ada kelas';
                }
                $event = Events::where('is_active','0')->orderBy('created_at','desc')->first();
                return view('backend.siswa.home', compact('kelas', 'event'));
            }
            else {
              $event = Events::where('is_active','0')->first();
              return view('backend.website.home', compact('event'));
            }
        }
    }
}
