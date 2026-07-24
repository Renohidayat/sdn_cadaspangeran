@extends('layouts.backend.app')

@section('title')
    Transkrip Nilai
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2> Transkrip Nilai Akademik</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header border-bottom">
                            <h4 class="card-title">Data Nilai Saya</h4>
                        </div>
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tahun Ajaran</th>
                                        <th>Mata Pelajaran</th>
                                        <th>Jenis Nilai</th>
                                        <th>Nilai</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $key => $item)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>{{ $item->tahunAjaran ? $item->tahunAjaran->nama . ' (' . $item->tahunAjaran->semester . ')' : '-' }}</td>
                                            <td>{{ $item->mataPelajaran ? $item->mataPelajaran->nama_mapel : '-' }}</td>
                                            <td>{{ $item->jenis_nilai }}</td>
                                            <td>{{ $item->nilai }}</td>
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
