<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pendaftaran;
use Session;

class PendaftaranController extends Controller
{
    public function index()
    {
        $pendaftarans = Pendaftaran::orderBy('created_at', 'desc')->get();
        return view('backend.pendaftaran.index', compact('pendaftarans'));
    }

    public function show($id)
    {
        $pendaftaran = Pendaftaran::findOrFail($id);
        return view('backend.pendaftaran.show', compact('pendaftaran'));
    }

    public function updateStatus(Request $request, $id)
    {
        $pendaftaran = Pendaftaran::findOrFail($id);
        $pendaftaran->status_pendaftaran = $request->status;
        $pendaftaran->save();

        Session::flash('success','Status pendaftaran berhasil diperbarui.');
        return redirect()->back();
    }

    public function destroy($id)
    {
        $pendaftaran = Pendaftaran::findOrFail($id);
        $pendaftaran->delete();
        
        Session::flash('success','Data pendaftaran berhasil dihapus.');
        return redirect()->back();
    }
}
