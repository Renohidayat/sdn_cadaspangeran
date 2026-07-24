@extends('layouts.backend.app')

@section('title')
    Tambah Nilai Akademik
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Tambah Nilai Akademik</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Tambah Nilai</h4>
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
                            <form action="{{ route('nilai.store') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="tahun_ajaran_id">Tahun Ajaran Aktif</label>
                                            <select class="form-control" id="tahun_ajaran_id" name="tahun_ajaran_id" required>
                                                <option value="">-- Pilih Tahun Ajaran --</option>
                                                @foreach($tahun_ajaran as $t)
                                                    <option value="{{ $t->id }}">{{ $t->nama }} ({{ $t->semester }})</option>
                                                @endforeach
                                            </select>
                                        </div>
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
                                            <label for="siswa_id">Siswa</label>
                                            <select class="form-control" id="siswa_id" name="siswa_id" required>
                                                <option value="">-- Pilih Siswa --</option>
                                                @foreach($siswa as $s)
                                                    <option value="{{ $s->id }}">{{ $s->nama }} ({{ $s->nis }})</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
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
                                            <label for="jenis_nilai">Jenis Nilai</label>
                                            <select class="form-control" id="jenis_nilai" name="jenis_nilai" required>
                                                <option value="">-- Pilih Jenis Nilai --</option>
                                                <option value="Tugas">Tugas</option>
                                                <option value="UTS">UTS</option>
                                                <option value="UAS">UAS</option>
                                                <option value="Lainnya">Lainnya</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="nilai">Nilai (0-100)</label>
                                            <input type="number" step="0.01" class="form-control" id="nilai" name="nilai" required>
                                        </div>
                                    </div>
                                </div>
                                
                                <button type="submit" class="btn btn-primary mt-1">Simpan</button>
                                <a href="{{ route('nilai.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection