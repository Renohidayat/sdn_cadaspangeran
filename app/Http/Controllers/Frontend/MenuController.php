<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;

use App\Models\Kegiatan;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    // Program Studi
    public function programStudi($slug)
    {
        $jurusan = Jurusan::with('dataJurusan')->where('slug', $slug)->first();

        // Menu
        
        $kegiatanM = Kegiatan::where('is_active','0')->get();
        return view('frontend.program.jurusan.show', compact('jurusan','jurusanM','kegiatanM'));
    }

    // Kegiatan All
    public function kegiatanAll()
    {
        $kegiatan = Kegiatan::where('is_active','0')->orderBy('created_at','desc')->get();
        $kegiatanM = Kegiatan::where('is_active','0')->get();
        return view('frontend.program.kegiatan.index', compact('kegiatan','kegiatanM'));
    }

    // Kegiatan
    public function kegiatan($slug)
    {
        $kegiatan = Kegiatan::where('slug', $slug)->first();
        
        // Menu
        $kegiatanM = Kegiatan::where('is_active','0')->get();
        return view('frontend.program.kegiatan.show', compact('kegiatan','kegiatanM'));
    }
}
