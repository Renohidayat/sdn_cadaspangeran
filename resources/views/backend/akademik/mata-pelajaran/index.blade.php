@extends('layouts.backend.app')

@section('title')
    Data Mata Pelajaran
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Data Mata Pelajaran</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Data Mata Pelajaran <a href="{{ route('mata-pelajaran.create') }}" class="btn btn-primary">Tambah</a></h4>
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
                                        <th>Kode Mata Pelajaran</th>
                                        <th>Nama Mata Pelajaran</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $key => $item)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>{{ $item->kode_mapel }}</td>
                                            <td>{{ $item->nama_mapel }}</td>
                                            <td>
                                                <a href="{{ route('mata-pelajaran.edit', $item->id) }}" class="btn btn-sm btn-info">Edit</a>
                                                <form action="{{ route('mata-pelajaran.destroy', $item->id) }}" method="POST" style="display: inline-block;">
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