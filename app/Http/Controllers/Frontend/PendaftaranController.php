<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pendaftaran;
use Session;

class PendaftaranController extends Controller
{
    public function index()
    {
        return view('frontend.content.ppdb');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_lengkap' => 'required|string|max:255',
            'nama_panggilan' => 'required|string|max:255',
            'jenis_kelamin' => 'required|in:Laki-Laki,Perempuan',
            'ttl' => 'required|string',
            'alamat' => 'required|string',
            'kewarganegaraan' => 'required|in:WNI,WNA',
            'anak_ke' => 'required|string',
            'berat_badan' => 'required|string',
            'tinggi_badan' => 'required|string',
            'nama_ayah' => 'required|string|max:255',
            'pekerjaan_ayah' => 'required|string|max:255',
            'pendidikan_ayah' => 'required|string|max:255',
            'kewarganegaraan_ayah' => 'required|in:WNI,WNA',
            'nohp_ayah' => 'required|string',
            'email_ayah' => 'required|email',
            'penghasilan_ayah' => 'required|string',
            'nama_ibu' => 'required|string|max:255',
            'pekerjaan_ibu' => 'required|string|max:255',
            'pendidikan_ibu' => 'required|string|max:255',
            'kewarganegaraan_ibu' => 'required|in:WNI,WNA',
            'agama' => 'required|string',
            'nohp_ibu' => 'required|string',
            'penghasilan_ibu' => 'required|string',
            'file_akte' => 'required|file|mimes:jpeg,png,jpg,pdf|max:10240',
            'file_bukti_tf' => 'required|file|mimes:jpeg,png,jpg,pdf|max:10240',
            'harapan_ortu' => 'required|string'
        ]);

        $data = $request->except(['_token', 'file_akte', 'file_bukti_tf']);

        // Upload files
        $tujuan_upload = 'public/ppdb';
        if($request->hasFile('file_akte')){
            $file_akte = $request->file('file_akte');
            $nama_akte = time()."_akte_".$file_akte->getClientOriginalName();
            $file_akte->storeAs($tujuan_upload, $nama_akte);
            $data['file_akte'] = $nama_akte;
        }

        if($request->hasFile('file_bukti_tf')){
            $file_tf = $request->file('file_bukti_tf');
            $nama_tf = time()."_tf_".$file_tf->getClientOriginalName();
            $file_tf->storeAs($tujuan_upload, $nama_tf);
            $data['file_bukti_tf'] = $nama_tf;
        }

        Pendaftaran::create($data);

        Session::flash('success','Pendaftaran Berhasil! Terima kasih atas partisipasi Anda.');
        return redirect()->back();
    }
}
