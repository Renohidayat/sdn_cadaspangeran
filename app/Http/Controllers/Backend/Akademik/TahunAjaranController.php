<?php

namespace App\Http\Controllers\Backend\Akademik;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TahunAjaran;

class TahunAjaranController extends Controller
{
    public function index()
    {
        $data = TahunAjaran::all();
        return view('backend.akademik.tahun-ajaran.index', compact('data'));
    }

    public function create()
    {
        return view('backend.akademik.tahun-ajaran.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|string|max:255',
            'semester' => 'required|in:Ganjil,Genap',
            'is_active' => 'required|boolean',
        ]);

        TahunAjaran::create($request->all());
        return redirect()->route('tahun-ajaran.index')->with('success', 'Tahun Ajaran berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $data = TahunAjaran::findOrFail($id);
        return view('backend.akademik.tahun-ajaran.edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required|string|max:255',
            'semester' => 'required|in:Ganjil,Genap',
            'is_active' => 'required|boolean',
        ]);

        $data = TahunAjaran::findOrFail($id);
        $data->update($request->all());
        return redirect()->route('tahun-ajaran.index')->with('success', 'Tahun Ajaran berhasil diubah.');
    }

    public function destroy($id)
    {
        $data = TahunAjaran::findOrFail($id);
        $data->delete();
        return redirect()->route('tahun-ajaran.index')->with('success', 'Tahun Ajaran berhasil dihapus.');
    }
}
