@extends('layouts.backend.app')

@section('title')
    Edit Jadwal
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Edit Jadwal Pelajaran</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Edit Jadwal</h4>
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
                            <form action="{{ route('jadwal.update', $data->id) }}" method="POST">
                                @csrf
                                @method('PUT')
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
                                    <label for="mata_pelajaran_id">Mata Pelajaran</label>
                                    <select class="form-control" id="mata_pelajaran_id" name="mata_pelajaran_id" required>
                                        <option value="">-- Pilih Mata Pelajaran --</option>
                                        @foreach($mapel as $m)
                                            <option value="{{ $m->id }}" {{ $data->mata_pelajaran_id == $m->id ? 'selected' : '' }}>{{ $m->nama_mapel }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="guru_id">Guru Pengajar</label>
                                    <select class="form-control" id="guru_id" name="guru_id" required>
                                        <option value="">-- Pilih Guru --</option>
                                        @foreach($guru as $g)
                                            <option value="{{ $g->id }}" {{ $data->guru_id == $g->id ? 'selected' : '' }}>{{ $g->nama }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="hari">Hari</label>
                                    <select class="form-control" id="hari" name="hari" required>
                                        <option value="">-- Pilih Hari --</option>
                                        <option value="Senin" {{ $data->hari == 'Senin' ? 'selected' : '' }}>Senin</option>
                                        <option value="Selasa" {{ $data->hari == 'Selasa' ? 'selected' : '' }}>Selasa</option>
                                        <option value="Rabu" {{ $data->hari == 'Rabu' ? 'selected' : '' }}>Rabu</option>
                                        <option value="Kamis" {{ $data->hari == 'Kamis' ? 'selected' : '' }}>Kamis</option>
                                        <option value="Jumat" {{ $data->hari == 'Jumat' ? 'selected' : '' }}>Jumat</option>
                                        <option value="Sabtu" {{ $data->hari == 'Sabtu' ? 'selected' : '' }}>Sabtu</option>
                                    </select>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="jam_mulai">Jam Mulai</label>
                                            <input type="time" class="form-control" id="jam_mulai" name="jam_mulai" value="{{ $data->jam_mulai }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="jam_selesai">Jam Selesai</label>
                                            <input type="time" class="form-control" id="jam_selesai" name="jam_selesai" value="{{ $data->jam_selesai }}" required>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary mt-1">Update</button>
                                <a href="{{ route('jadwal.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection