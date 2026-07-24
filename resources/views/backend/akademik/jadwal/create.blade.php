@extends('layouts.backend.app')

@section('title')
    Tambah Jadwal
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Tambah Jadwal Pelajaran</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Tambah Jadwal</h4>
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
                            <form action="{{ route('jadwal.store') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="kelas_id">Kelas</label>
                                    <select class="form-control" id="kelas_id" name="kelas_id" required>
                                        <option value="">-- Pilih Kelas --</option>
                                        @foreach($kelas as $k)
                                            <option value="{{ $k->id }}">{{ $k->nama_kelas }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="mata_pelajaran_id">Mata Pelajaran</label>
                                    <select class="form-control" id="mata_pelajaran_id" name="mata_pelajaran_id" required>
                                        <option value="">-- Pilih Mata Pelajaran --</option>
                                        @foreach($mapel as $m)
                                            <option value="{{ $m->id }}">{{ $m->nama_mapel }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="guru_id">Guru Pengajar</label>
                                    <select class="form-control" id="guru_id" name="guru_id" required>
                                        <option value="">-- Pilih Guru --</option>
                                        @foreach($guru as $g)
                                            <option value="{{ $g->id }}">{{ $g->nama }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="hari">Hari</label>
                                    <select class="form-control" id="hari" name="hari" required>
                                        <option value="">-- Pilih Hari --</option>
                                        <option value="Senin">Senin</option>
                                        <option value="Selasa">Selasa</option>
                                        <option value="Rabu">Rabu</option>
                                        <option value="Kamis">Kamis</option>
                                        <option value="Jumat">Jumat</option>
                                        <option value="Sabtu">Sabtu</option>
                                    </select>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="jam_mulai">Jam Mulai</label>
                                            <input type="time" class="form-control" id="jam_mulai" name="jam_mulai" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="jam_selesai">Jam Selesai</label>
                                            <input type="time" class="form-control" id="jam_selesai" name="jam_selesai" required>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary mt-1">Simpan</button>
                                <a href="{{ route('jadwal.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection