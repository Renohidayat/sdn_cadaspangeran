<?php

namespace App\Http\Controllers\Backend\Akademik;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Siswa;

class SiswaController extends Controller
{
    public function index()
    {
        $data = Siswa::with(['user', 'kelas'])->get();
        return view('backend.akademik.siswa.index', compact('data'));
    }

    public function create()
    {
        $kelas = \App\Models\Kelas::all();
        return view('backend.akademik.siswa.create', compact('kelas'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'nis' => 'required|string|unique:siswas,nis',
            'nama' => 'required|string|max:255',
            'jenis_kelamin' => 'required|in:Laki-laki,Perempuan',
            'kelas_id' => 'required|exists:kelas,id',
            'telepon' => 'nullable|string|max:15',
            'alamat' => 'nullable|string',
            'foto_profile' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'status' => 'required|in:Aktif,Tidak Aktif',
            'tgl_lahir' => 'required|date',
        ]);

        $nama_foto = 'avatar.png';
        if ($request->hasFile('foto_profile')) {
            $foto = $request->file('foto_profile');
            $nama_foto = time() . '_' . $foto->getClientOriginalName();
            $foto->storeAs('public/images/profile', $nama_foto);
        }

        $password = date('Ymd', strtotime($request->tgl_lahir));

        $user = \App\Models\User::create([
            'name' => $request->nama,
            'username' => $request->nis,
            'email' => $request->nis . '@sch.id',
            'password' => bcrypt($password),
            'role' => 'Siswa',
            'status' => 'Aktif',
            'foto_profile' => $nama_foto,
        ]);
        $user->assignRole('Siswa');

        Siswa::create([
            'user_id' => $user->id,
            'nis' => $request->nis,
            'nama' => $request->nama,
            'jenis_kelamin' => $request->jenis_kelamin,
            'kelas_id' => $request->kelas_id,
            'telepon' => $request->telepon,
            'alamat' => $request->alamat,
            'status' => $request->status,
        ]);

        return redirect()->route('siswa.index')->with('success', 'Siswa berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $data = Siswa::findOrFail($id);
        $kelas = \App\Models\Kelas::all();
        return view('backend.akademik.siswa.edit', compact('data', 'kelas'));
    }

    public function update(Request $request, $id)
    {
        $data = Siswa::findOrFail($id);
        $request->validate([
            'nis' => 'required|string|unique:siswas,nis,' . $id,
            'nama' => 'required|string|max:255',
            'jenis_kelamin' => 'required|in:Laki-laki,Perempuan',
            'kelas_id' => 'required|exists:kelas,id',
            'telepon' => 'nullable|string|max:15',
            'alamat' => 'nullable|string',
            'foto_profile' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'status' => 'required|in:Aktif,Tidak Aktif',
            'tgl_lahir' => 'nullable|date',
        ]);

        $user = $data->user;
        $nama_foto = $user ? $user->foto_profile : 'avatar.png';
        if ($request->hasFile('foto_profile')) {
            $foto = $request->file('foto_profile');
            $nama_foto = time() . '_' . $foto->getClientOriginalName();
            $foto->storeAs('public/images/profile', $nama_foto);
        }

        if ($user) {
            $user->update([
                'name' => $request->nama,
                'username' => $request->nis,
                'foto_profile' => $nama_foto,
            ]);
            if ($request->tgl_lahir) {
                $password = date('Ymd', strtotime($request->tgl_lahir));
                $user->update(['password' => bcrypt($password)]);
            }
        }

        $data->update([
            'nis' => $request->nis,
            'nama' => $request->nama,
            'jenis_kelamin' => $request->jenis_kelamin,
            'kelas_id' => $request->kelas_id,
            'telepon' => $request->telepon,
            'alamat' => $request->alamat,
            'status' => $request->status,
        ]);

        return redirect()->route('siswa.index')->with('success', 'Siswa berhasil diupdate.');
    }

    public function destroy($id)
    {
        $data = Siswa::findOrFail($id);
        $user = $data->user;
        $data->delete();
        if($user) {
            $user->delete();
        }
        return redirect()->route('siswa.index')->with('success', 'Siswa berhasil dihapus.');
    }
}
