@extends('layouts.backend.app')

@section('title')
    Edit Kelas
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Edit Kelas</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Edit Kelas</h4>
                        </div>
                        <div class="card-body mt-2">
                            <form action="{{ route('kelas.update', $data->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="nama_kelas">Nama Kelas</label>
                                    <input type="text" class="form-control" id="nama_kelas" name="nama_kelas" value="{{ $data->nama_kelas }}" required>
                                </div>
                                <div class="form-group">
                                    <label for="tahun_ajaran_id">Tahun Ajaran</label>
                                    <select name="tahun_ajaran_id" id="tahun_ajaran_id" class="form-control" required>
                                        <option value="">-- Pilih Tahun Ajaran --</option>
                                        @foreach($tahun_ajaran as $ta)
                                            <option value="{{ $ta->id }}" {{ $data->tahun_ajaran_id == $ta->id ? 'selected' : '' }}>{{ $ta->nama }} ({{ $ta->semester }})</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="wali_kelas_id">Wali Kelas</label>
                                    <select name="wali_kelas_id" id="wali_kelas_id" class="form-control">
                                        <option value="">-- Pilih Wali Kelas (Opsional) --</option>
                                        @foreach($guru as $g)
                                            <option value="{{ $g->id }}" {{ $data->wali_kelas_id == $g->id ? 'selected' : '' }}>{{ $g->nama }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary mt-1">Update</button>
                                <a href="{{ route('kelas.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection