@extends('layouts.backend.app')

@section('title')
    Edit Nilai Akademik
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Edit Nilai Akademik</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Edit Nilai</h4>
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
                            <form action="{{ route('nilai.update', $data->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="tahun_ajaran_id">Tahun Ajaran</label>
                                            <select class="form-control" id="tahun_ajaran_id" name="tahun_ajaran_id" required>
                                                <option value="">-- Pilih Tahun Ajaran --</option>
                                                @foreach($tahun_ajaran as $t)
                                                    <option value="{{ $t->id }}" {{ $data->tahun_ajaran_id == $t->id ? 'selected' : '' }}>{{ $t->nama }} ({{ $t->semester }})</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="kelas_id">Kelas</label>
                                            <select class="form-control" id="kelas_id" name="kelas_id" required>
                                                <option value="">-- Pilih Kelas --</option>
                                                @foreach($kelas as $k)
                                                    <option value="{{ $k->id }}" {{ $data->kelas_id == $k->id ? 'selected' : '' }}>{{ $k->nama_kelas }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="siswa_id">Siswa</label>
                                            <select class="form-control" id="siswa_id" name="siswa_id" required>
                                                <option value="">-- Pilih Siswa --</option>
                                                @foreach($siswa as $s)
                                                    <option value="{{ $s->id }}" {{ $data->siswa_id == $s->id ? 'selected' : '' }}>{{ $s->nama }} ({{ $s->nis }})</option>
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
                                                    <option value="{{ $m->id }}" {{ $data->mata_pelajaran_id == $m->id ? 'selected' : '' }}>{{ $m->nama_mapel }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="jenis_nilai">Jenis Nilai</label>
                                            <select class="form-control" id="jenis_nilai" name="jenis_nilai" required>
                                                <option value="">-- Pilih Jenis Nilai --</option>
                                                <option value="Tugas" {{ $data->jenis_nilai == 'Tugas' ? 'selected' : '' }}>Tugas</option>
                                                <option value="UTS" {{ $data->jenis_nilai == 'UTS' ? 'selected' : '' }}>UTS</option>
                                                <option value="UAS" {{ $data->jenis_nilai == 'UAS' ? 'selected' : '' }}>UAS</option>
                                                <option value="Lainnya" {{ $data->jenis_nilai == 'Lainnya' ? 'selected' : '' }}>Lainnya</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="nilai">Nilai (0-100)</label>
                                            <input type="number" step="0.01" class="form-control" id="nilai" name="nilai" value="{{ $data->nilai }}" required>
                                        </div>
                                    </div>
                                </div>
                                
                                <button type="submit" class="btn btn-primary mt-1">Update</button>
                                <a href="{{ route('nilai.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection