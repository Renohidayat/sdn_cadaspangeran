@extends('layouts.backend.app')

@section('title')
    Edit Tahun Ajaran
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Edit Tahun Ajaran</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Form Edit Tahun Ajaran</h4>
                        </div>
                        <div class="card-body mt-2">
                            <form action="{{ route('tahun-ajaran.update', $data->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="nama">Tahun Ajaran</label>
                                    <input type="text" class="form-control" id="nama" name="nama" value="{{ $data->nama }}" required>
                                </div>
                                <div class="form-group">
                                    <label for="semester">Semester</label>
                                    <select class="form-control" id="semester" name="semester" required>
                                        <option value="Ganjil" {{ $data->semester == 'Ganjil' ? 'selected' : '' }}>Ganjil</option>
                                        <option value="Genap" {{ $data->semester == 'Genap' ? 'selected' : '' }}>Genap</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="is_active">Status</label>
                                    <select class="form-control" id="is_active" name="is_active" required>
                                        <option value="1" {{ $data->is_active == 1 ? 'selected' : '' }}>Aktif</option>
                                        <option value="0" {{ $data->is_active == 0 ? 'selected' : '' }}>Tidak Aktif</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary mt-1">Update</button>
                                <a href="{{ route('tahun-ajaran.index') }}" class="btn btn-secondary mt-1">Kembali</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection