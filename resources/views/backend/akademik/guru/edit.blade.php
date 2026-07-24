@extends('layouts.backend.app')

@section('title')
    Edit Data Guru
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Edit Data Guru</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Edit Guru</h4>
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
                            <form action="{{ route('guru.update', $data->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="nip">NIP</label>
                                            <input type="text" class="form-control" id="nip" name="nip" value="{{ old('nip', $data->nip) }}" required>
                                            <small class="text-muted">NIP akan digunakan sebagai Password default untuk login.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" id="email" name="email" value="{{ old('email', $data->user->email ?? '') }}" required>
                                            <small class="text-muted">Email ini akan digunakan sebagai Username untuk login.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="nama">Nama Lengkap</label>
                                            <input type="text" class="form-control" id="nama" name="nama" value="{{ old('nama', $data->nama) }}" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="jenis_kelamin">Jenis Kelamin</label>
                                            <select class="form-control" id="jenis_kelamin" name="jenis_kelamin" required>
                                                <option value="">-- Pilih --</option>
                                                <option value="Laki-laki" {{ $data->jenis_kelamin == 'Laki-laki' ? 'selected' : '' }}>Laki-laki</option>
                                                <option value="Perempuan" {{ $data->jenis_kelamin == 'Perempuan' ? 'selected' : '' }}>Perempuan</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="telepon">Telepon / HP</label>
                                            <input type="text" class="form-control" id="telepon" name="telepon" value="{{ $data->telepon }}" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="alamat">Alamat</label>
                                            <textarea class="form-control" id="alamat" name="alamat" rows="3" required>{{ $data->alamat }}</textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="foto_profile">Foto Profil</label><br>
                                            @if($data->user && $data->user->foto_profile)
                                                <img src="{{ asset('storage/images/profile/' . $data->user->foto_profile) }}" width="80" class="mb-1">
                                            @endif
                                            <input type="file" class="form-control-file" id="foto_profile" name="foto_profile" accept="image/*">
                                            <small class="text-muted">Biarkan kosong jika tidak ingin mengubah foto.</small>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary mt-2">Update</button>
                                <a href="{{ route('guru.index') }}" class="btn btn-secondary mt-2">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection