@extends('layouts.backend.app')

@section('title')
    Tambah Kelas
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Tambah Kelas</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Tambah Kelas</h4>
                        </div>
                        <div class="card-body mt-2">
                            <form action="{{ route('kelas.store') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="nama_kelas">Nama Kelas</label>
                                    <input type="text" class="form-control" id="nama_kelas" name="nama_kelas" placeholder="Contoh: Kelas 1A" required>
                                </div>
                                <div class="form-group">
                                    <label for="tahun_ajaran_id">Tahun Ajaran</label>
                                    <select name="tahun_ajaran_id" id="tahun_ajaran_id" class="form-control" required>
                                        <option value="">-- Pilih Tahun Ajaran --</option>
                                        @foreach($tahun_ajaran as $ta)
                                            <option value="{{ $ta->id }}">{{ $ta->nama }} ({{ $ta->semester }})</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="wali_kelas_id">Wali Kelas</label>
                                    <select name="wali_kelas_id" id="wali_kelas_id" class="form-control">
                                        <option value="">-- Pilih Wali Kelas (Opsional) --</option>
                                        @foreach($guru as $g)
                                            <option value="{{ $g->id }}">{{ $g->nama }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary mt-1">Simpan</button>
                                <a href="{{ route('kelas.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection