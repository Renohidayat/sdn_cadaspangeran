<?php

namespace App\Http\Controllers\Backend\Pengguna;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Guru;

class PengajarController extends Controller
{
    public function index()
    {
        $data = Guru::with('user')->get();
        return view('backend.pengguna.pengajar.index', compact('data'));
    }

    public function create()
    {
        return view('backend.pengguna.pengajar.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nip' => 'required|string|unique:gurus,nip',
            'nama' => 'required|string|max:255',
            'jenis_kelamin' => 'required|in:Laki-laki,Perempuan',
            'telepon' => 'required|string|max:15',
            'alamat' => 'required|string',
            'foto_profile' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        $nama_foto = 'avatar.png';
        if ($request->hasFile('foto_profile')) {
            $foto = $request->file('foto_profile');
            $nama_foto = time() . '_' . $foto->getClientOriginalName();
            $foto->storeAs('public/images/profile', $nama_foto);
        }

        $user = \App\Models\User::create([
            'name' => $request->nama,
            'username' => $request->nip,
            'email' => $request->nip . '@sch.id',
            'password' => bcrypt($request->nip),
            'role' => 'Guru',
            'status' => 'Aktif',
            'foto_profile' => $nama_foto,
        ]);
        $user->assignRole('Guru');

        \App\Models\UsersDetail::create([
            'user_id' => $user->id,
            'role' => 'Guru',
            'nip' => $request->nip,
            'email' => $request->nip . '@sch.id',
            'mengajar' => '-', // Default karena form akademik tidak ada field ini
            'linkidln' => '',
            'instagram' => '',
            'website' => '',
            'facebook' => '',
            'twitter' => '',
            'youtube' => '',
        ]);

        Guru::create([
            'user_id' => $user->id,
            'nip' => $request->nip,
            'nama' => $request->nama,
            'jenis_kelamin' => $request->jenis_kelamin,
            'telepon' => $request->telepon,
            'alamat' => $request->alamat,
        ]);

        return redirect()->route('backend-pengguna-pengajar.index')->with('success', 'Guru berhasil ditambahkan. Data otomatis tersinkronisasi dengan Pengguna.');
    }

    public function edit($id)
    {
        $data = Guru::findOrFail($id);
        return view('backend.pengguna.pengajar.edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $data = Guru::findOrFail($id);
        $request->validate([
            'nip' => 'required|string|unique:gurus,nip,' . $id,
            'nama' => 'required|string|max:255',
            'jenis_kelamin' => 'required|in:Laki-laki,Perempuan',
            'telepon' => 'required|string|max:15',
            'alamat' => 'required|string',
            'foto_profile' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        $user = $data->user;
        $nama_foto = $user->foto_profile;
        if ($request->hasFile('foto_profile')) {
            $foto = $request->file('foto_profile');
            $nama_foto = time() . '_' . $foto->getClientOriginalName();
            $foto->storeAs('public/images/profile', $nama_foto);
        }

        $user->update([
            'name' => $request->nama,
            'username' => $request->nip,
            'foto_profile' => $nama_foto,
        ]);

        $userDetail = \App\Models\UsersDetail::where('user_id', $user->id)->first();
        if($userDetail) {
            $userDetail->update([
                'nip' => $request->nip,
                'email' => $request->nip . '@sch.id',
            ]);
        }

        $data->update([
            'nip' => $request->nip,
            'nama' => $request->nama,
            'jenis_kelamin' => $request->jenis_kelamin,
            'telepon' => $request->telepon,
            'alamat' => $request->alamat,
        ]);

        return redirect()->route('backend-pengguna-pengajar.index')->with('success', 'Guru berhasil diupdate.');
    }

    public function destroy($id)
    {
        $data = Guru::findOrFail($id);
        $user = $data->user;
        $data->delete();
        if($user) {
            $user->delete();
        }
        return redirect()->route('backend-pengguna-pengajar.index')->with('success', 'Guru berhasil dihapus.');
    }
}
