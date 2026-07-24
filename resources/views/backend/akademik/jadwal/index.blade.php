@extends('layouts.backend.app')

@section('title')
    Jadwal Pelajaran
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Jadwal Pelajaran</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Data Jadwal <a href="{{ route('jadwal.create') }}" class="btn btn-primary">Tambah</a></h4>
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
                                        <th>Kelas</th>
                                        <th>Mata Pelajaran</th>
                                        <th>Guru Pengajar</th>
                                        <th>Hari</th>
                                        <th>Jam</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $key => $item)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>{{ $item->kelas ? $item->kelas->nama_kelas : '-' }}</td>
                                            <td>{{ $item->mataPelajaran ? $item->mataPelajaran->nama_mapel : '-' }}</td>
                                            <td>{{ $item->guru ? $item->guru->nama : '-' }}</td>
                                            <td>{{ $item->hari }}</td>
                                            <td>{{ $item->jam_mulai }} - {{ $item->jam_selesai }}</td>
                                            <td>
                                                <a href="{{ route('jadwal.edit', $item->id) }}" class="btn btn-sm btn-info">Edit</a>
                                                <form action="{{ route('jadwal.destroy', $item->id) }}" method="POST" style="display: inline-block;">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Yakin ingin menghapus?')">Hapus</button>
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