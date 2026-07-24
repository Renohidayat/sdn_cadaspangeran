@extends('layouts.backend.app')

@section('title')
    Tambah Tahun Ajaran
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Tambah Tahun Ajaran</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Tambah Tahun Ajaran</h4>
                        </div>
                        <div class="card-body mt-2">
                            <form action="{{ route('tahun-ajaran.store') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="nama">Tahun Ajaran</label>
                                    <input type="text" class="form-control" id="nama" name="nama" placeholder="Contoh: 2023/2024" required>
                                </div>
                                <div class="form-group">
                                    <label for="semester">Semester</label>
                                    <select class="form-control" id="semester" name="semester" required>
                                        <option value="Ganjil">Ganjil</option>
                                        <option value="Genap">Genap</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="is_active">Status</label>
                                    <select class="form-control" id="is_active" name="is_active" required>
                                        <option value="1">Aktif</option>
                                        <option value="0">Tidak Aktif</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary mt-1">Simpan</button>
                                <a href="{{ route('tahun-ajaran.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection