@extends('layouts.backend.app')

@section('title')
    Pilih Kelas untuk Data Nilai
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Pilih Kelas</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                @foreach ($kelas_list as $kelas)
                    <div class="col-md-4 col-sm-6 col-12">
                        <div class="card">
                            <div class="card-header">
                                <div>
                                    <h2 class="font-weight-bolder mb-0">{{ $kelas->nama_kelas }}</h2>
                                    <p class="card-text">Tahun Ajaran: {{ optional($kelas->tahunAjaran)->nama }}</p>
                                </div>
                                <div class="avatar bg-light-primary p-50 m-0">
                                    <div class="avatar-content">
                                        <i data-feather="users" class="font-medium-5"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <a href="{{ route('guru.nilai.index', ['kelas_id' => $kelas->id]) }}" class="btn btn-primary btn-block">Lihat Nilai</a>
                            </div>
                        </div>
                    </div>
                @endforeach
                @if($kelas_list->isEmpty())
                    <div class="col-12">
                        <div class="alert alert-warning">
                            <div class="alert-body">
                                Anda belum memiliki jadwal mengajar di kelas manapun.
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection
