@extends('layouts.backend.app')

@section('title')
    Data Guru
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Data Guru</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Data Guru <a href="{{ route('guru.create') }}" class="btn btn-primary">Tambah</a></h4>
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
                                        <th>Foto</th>
                                        <th>NIP</th>
                                        <th>Nama</th>
                                        <th>L/P</th>
                                        <th>Telepon</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $key => $item)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>
                                                @if($item->user && $item->user->foto_profile)
                                                    <img src="{{ asset('storage/images/profile/' . $item->user->foto_profile) }}" width="50" height="50" class="rounded-circle" alt="Foto">
                                                @else
                                                    <img src="{{ asset('assets/images/avatar.png') }}" width="50" height="50" class="rounded-circle" alt="Foto">
                                                @endif
                                            </td>
                                            <td>{{ $item->nip }}</td>
                                            <td>{{ $item->nama }}</td>
                                            <td>{{ $item->jenis_kelamin }}</td>
                                            <td>{{ $item->telepon }}</td>
                                            <td>
                                                <a href="{{ route('guru.edit', $item->id) }}" class="btn btn-sm btn-info">Edit</a>
                                                <form action="{{ route('guru.destroy', $item->id) }}" method="POST" style="display: inline-block;">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Menghapus data Guru juga akan menghapus akun User-nya. Lanjutkan?')">Hapus</button>
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