@extends('layouts.backend.app')

@section('title')
    Tambah Mata Pelajaran
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Tambah Mata Pelajaran</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Tambah Mata Pelajaran</h4>
                        </div>
                        <div class="card-body mt-2">
                            <form action="{{ route('mata-pelajaran.store') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="kode_mapel">Kode Mata Pelajaran</label>
                                    <input type="text" class="form-control" id="kode_mapel" name="kode_mapel" placeholder="Contoh: MTK" required>
                                </div>
                                <div class="form-group">
                                    <label for="nama_mapel">Nama Mata Pelajaran</label>
                                    <input type="text" class="form-control" id="nama_mapel" name="nama_mapel" placeholder="Contoh: Matematika" required>
                                </div>
                                <button type="submit" class="btn btn-primary mt-1">Simpan</button>
                                <a href="{{ route('mata-pelajaran.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection