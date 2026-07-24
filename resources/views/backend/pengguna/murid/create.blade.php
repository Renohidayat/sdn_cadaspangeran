@extends('layouts.backend.app')

@section('title')
    Tambah Data Siswa
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Tambah Data Siswa</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Tambah Siswa</h4>
                        </div>
                        <div class="card-body mt-2">
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul class="mb-0">
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <form action="{{ route('backend-pengguna-murid.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="nis">NIS / NISN</label>
                                            <input type="text" class="form-control" id="nis" name="nis" value="{{ old('nis') }}" required>
                                            <small class="text-muted">NIS akan digunakan sebagai Username untuk login.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="nama">Nama Lengkap</label>
                                            <input type="text" class="form-control" id="nama" name="nama" value="{{ old('nama') }}" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="tgl_lahir">Tanggal Lahir (Password)</label>
                                            <input type="date" class="form-control" id="tgl_lahir" name="tgl_lahir" value="{{ old('tgl_lahir') }}" required>
                                            <small class="text-muted">Digunakan sebagai password default untuk login.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="jenis_kelamin">Jenis Kelamin</label>
                                            <select class="form-control" id="jenis_kelamin" name="jenis_kelamin" required>
                                                <option value="">-- Pilih --</option>
                                                <option value="Laki-laki" {{ old('jenis_kelamin') == 'Laki-laki' ? 'selected' : '' }}>Laki-laki</option>
                                                <option value="Perempuan" {{ old('jenis_kelamin') == 'Perempuan' ? 'selected' : '' }}>Perempuan</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="kelas_id">Kelas</label>
                                            <select class="form-control" id="kelas_id" name="kelas_id" required>
                                                <option value="">-- Pilih Kelas --</option>
                                                @foreach($kelas as $k)
                                                    <option value="{{ $k->id }}" {{ old('kelas_id') == $k->id ? 'selected' : '' }}>{{ $k->nama_kelas }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="telepon">Telepon / HP</label>
                                            <input type="text" class="form-control" id="telepon" name="telepon" value="{{ old('telepon') }}">
                                        </div>
                                        <div class="form-group">
                                            <label for="alamat">Alamat</label>
                                            <textarea class="form-control" id="alamat" name="alamat" rows="3">{{ old('alamat') }}</textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="status">Status Siswa</label>
                                            <select class="form-control" id="status" name="status" required>
                                                <option value="Aktif" {{ old('status') == 'Aktif' ? 'selected' : '' }}>Aktif</option>
                                                <option value="Tidak Aktif" {{ old('status') == 'Tidak Aktif' ? 'selected' : '' }}>Tidak Aktif</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="foto_profile">Foto Profil</label>
                                            <input type="file" class="form-control-file" id="foto_profile" name="foto_profile" accept="image/*">
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary mt-2">Simpan</button>
                                <a href="{{ route('backend-pengguna-murid.index') }}" class="btn btn-secondary mt-2">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection