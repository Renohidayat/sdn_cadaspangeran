@extends('layouts.backend.app')

@section('title')
    Data Nilai
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Data Nilai Kelas {{ $kelas->nama_kelas }}</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">
                                <a href="{{ route('nilai.index') }}" class="btn btn-secondary mr-1">Kembali</a>
                                Data Nilai
                                <a href="{{ route('nilai.create') }}" class="btn btn-primary ml-1">Tambah</a>
                            </h4>
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
                                            <th>Nama Siswa</th>
                                            <th>Mata Pelajaran</th>
                                            <th>Kelas</th>
                                            <th>Tahun Ajaran</th>
                                            <th>Jenis Nilai</th>
                                            <th>Nilai</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data as $key => $nilai)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ optional($nilai->siswa)->nama }}</td>
                                                <td>{{ optional($nilai->mataPelajaran)->nama_mapel }}</td>
                                                <td>{{ optional($nilai->kelas)->nama_kelas }}</td>
                                                <td>{{ optional($nilai->tahunAjaran)->nama }}</td>
                                                <td>{{ $nilai->jenis_nilai }}</td>
                                                <td>{{ $nilai->nilai }}</td>
                                                <td>
                                                    <a href="{{ route('nilai.edit', $nilai->id) }}" class="btn btn-success btn-sm">Edit</a>
                                                    <form action="{{ route('nilai.destroy', $nilai->id) }}" method="POST" style="display: inline-block;">
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