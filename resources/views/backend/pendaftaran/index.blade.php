@extends('layouts.backend.app')

@section('title')
    Data PPDB
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2 class="content-header-title float-left mb-0">Data PPDB</h2>
                        <div class="breadcrumb-wrapper">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                                <li class="breadcrumb-item active">Data PPDB</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Data Calon Siswa Baru</h4>
                        </div>
                        <div class="card-body">
                            @if (Session::has('success'))
                                <div class="alert alert-success">
                                    <div class="alert-body">
                                        {{ Session::get('success') }}
                                    </div>
                                </div>
                            @endif

                            <div class="table-responsive">
                                <table class="table table-striped table-bordered" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama Lengkap</th>
                                            <th>Tanggal Lahir</th>
                                            <th>Asal / Alamat</th>
                                            <th>Nama Ortu (Ayah)</th>
                                            <th>Status</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($pendaftarans as $key => $pendaftaran)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ $pendaftaran->nama_lengkap }}</td>
                                                <td>{{ $pendaftaran->ttl }}</td>
                                                <td>{{ Str::limit($pendaftaran->alamat, 30) }}</td>
                                                <td>{{ $pendaftaran->nama_ayah }}</td>
                                                <td>
                                                    @if($pendaftaran->status_pendaftaran == 'Pending')
                                                        <span class="badge badge-warning">Pending</span>
                                                    @elseif($pendaftaran->status_pendaftaran == 'Diterima')
                                                        <span class="badge badge-success">Diterima</span>
                                                    @else
                                                        <span class="badge badge-danger">Ditolak</span>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('backend-pendaftaran.show', $pendaftaran->id) }}" class="btn btn-info btn-sm">Detail</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
<script>
    $(document).ready(function() {
        $('#dataTable').DataTable();
    });
</script>
@endpush
