@extends('layouts.backend.app')

@section('title')
    Data Kelas
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Data Kelas</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Data Kelas <a href="{{ route('kelas.create') }}" class="btn btn-primary">Tambah</a></h4>
                        </div>
                        <div class="card-body">
                            @if (session('success'))
                                <div class="alert alert-success">
                                    <div class="alert-body">
                                        {{ session('success') }}
                                    </div>
                                </div>
                            @endif
                            <table class="table">
                                <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama Kelas</th>
                                            <th>Tahun Ajaran</th>
                                            <th>Wali Kelas</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data as $key => $kelas)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ $kelas->nama_kelas }}</td>
                                                <td>{{ optional($kelas->tahunAjaran)->nama }} ({{ optional($kelas->tahunAjaran)->semester }})</td>
                                                <td>{{ optional($kelas->waliKelas)->nama ?? '-' }}</td>
                                                <td>
                                                    <a href="{{ route('kelas.edit', $kelas->id) }}" class="btn btn-success btn-sm">Edit</a>
                                                    <form action="{{ route('kelas.destroy', $kelas->id) }}" method="POST" style="display: inline-block;">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Yakin ingin menghapus data ini?')">Hapus</button>
                                                    </form>
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
@endsection

@section('scripts')
<script>
    $(document).ready(function() {
        $('.table').DataTable();
    });
</script>
@endsection