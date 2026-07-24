@extends('layouts.backend.app')

@section('title')
    Detail Pendaftaran
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2 class="content-header-title float-left mb-0">Detail Pendaftaran</h2>
                        <div class="breadcrumb-wrapper">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="{{ route('backend-pendaftaran.index') }}">Data PPDB</a></li>
                                <li class="breadcrumb-item active">Detail</li>
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
                            <h4 class="card-title">Detail Calon Siswa: {{ $pendaftaran->nama_lengkap }}</h4>
                            <div>
                                <form action="{{ route('backend-pendaftaran.updateStatus', $pendaftaran->id) }}" method="POST" style="display: inline-block;">
                                    @csrf
                                    @method('PUT')
                                    <select name="status" class="form-control d-inline-block" style="width: 150px;" onchange="this.form.submit()">
                                        <option value="Pending" {{ $pendaftaran->status_pendaftaran == 'Pending' ? 'selected' : '' }}>Pending</option>
                                        <option value="Diterima" {{ $pendaftaran->status_pendaftaran == 'Diterima' ? 'selected' : '' }}>Diterima</option>
                                        <option value="Ditolak" {{ $pendaftaran->status_pendaftaran == 'Ditolak' ? 'selected' : '' }}>Ditolak</option>
                                    </select>
                                </form>
                                <form action="{{ route('backend-pendaftaran.destroy', $pendaftaran->id) }}" method="POST" style="display: inline-block;" onsubmit="return confirm('Yakin ingin menghapus data ini?');">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Hapus</button>
                                </form>
                            </div>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <tr><th colspan="2" class="bg-light">I. DATA CALON SISWA BARU</th></tr>
                                <tr><td width="30%">Nama Lengkap</td><td>{{ $pendaftaran->nama_lengkap }}</td></tr>
                                <tr><td>Nama Panggilan</td><td>{{ $pendaftaran->nama_panggilan }}</td></tr>
                                <tr><td>Jenis Kelamin</td><td>{{ $pendaftaran->jenis_kelamin }}</td></tr>
                                <tr><td>Tempat dan Tanggal Lahir</td><td>{{ $pendaftaran->ttl }}</td></tr>
                                <tr><td>Alamat Lengkap</td><td>{{ $pendaftaran->alamat }}</td></tr>
                                <tr><td>Kewarganegaraan</td><td>{{ $pendaftaran->kewarganegaraan }}</td></tr>
                                <tr><td>Anak ke dari</td><td>{{ $pendaftaran->anak_ke }}</td></tr>
                                <tr><td>Berat Badan</td><td>{{ $pendaftaran->berat_badan }} Kg</td></tr>
                                <tr><td>Tinggi Badan</td><td>{{ $pendaftaran->tinggi_badan }} cm</td></tr>

                                <tr><th colspan="2" class="bg-light">II. KETERANGAN KESEHATAN</th></tr>
                                <tr><td>Penyakit Khusus</td><td>{{ $pendaftaran->penyakit_khusus ?: '-' }}</td></tr>

                                <tr><th colspan="2" class="bg-light">III. DATA ORANGTUA/WALI</th></tr>
                                <tr><td>Nama Ayah</td><td>{{ $pendaftaran->nama_ayah }}</td></tr>
                                <tr><td>Pekerjaan Ayah</td><td>{{ $pendaftaran->pekerjaan_ayah }}</td></tr>
                                <tr><td>Pendidikan Ayah</td><td>{{ $pendaftaran->pendidikan_ayah }}</td></tr>
                                <tr><td>Kewarganegaraan Ayah</td><td>{{ $pendaftaran->kewarganegaraan_ayah }}</td></tr>
                                <tr><td>Nomor HP/WA Ayah</td><td>{{ $pendaftaran->nohp_ayah }}</td></tr>
                                <tr><td>Email Ayah</td><td>{{ $pendaftaran->email_ayah }}</td></tr>
                                <tr><td>Penghasilan Ayah</td><td>{{ $pendaftaran->penghasilan_ayah }}</td></tr>

                                <tr><td>Nama Ibu</td><td>{{ $pendaftaran->nama_ibu }}</td></tr>
                                <tr><td>Pekerjaan Ibu</td><td>{{ $pendaftaran->pekerjaan_ibu }}</td></tr>
                                <tr><td>Pendidikan Ibu</td><td>{{ $pendaftaran->pendidikan_ibu }}</td></tr>
                                <tr><td>Kewarganegaraan Ibu</td><td>{{ $pendaftaran->kewarganegaraan_ibu }}</td></tr>
                                <tr><td>Agama</td><td>{{ $pendaftaran->agama }}</td></tr>
                                <tr><td>Nomor HP/WA Ibu</td><td>{{ $pendaftaran->nohp_ibu }}</td></tr>
                                <tr><td>Penghasilan Ibu</td><td>{{ $pendaftaran->penghasilan_ibu }}</td></tr>

                                <tr><th colspan="2" class="bg-light">IV. UPLOAD DOKUMEN</th></tr>
                                <tr>
                                    <td>Scan Akte Kelahiran</td>
                                    <td>
                                        @if($pendaftaran->file_akte)
                                            <a href="{{ asset('storage/ppdb/' . $pendaftaran->file_akte) }}" target="_blank" class="btn btn-sm btn-primary">Lihat Dokumen</a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                                <tr>
                                    <td>Bukti Transfer Pendaftaran</td>
                                    <td>
                                        @if($pendaftaran->file_bukti_tf)
                                            <a href="{{ asset('storage/ppdb/' . $pendaftaran->file_bukti_tf) }}" target="_blank" class="btn btn-sm btn-primary">Lihat Dokumen</a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>

                                <tr><th colspan="2" class="bg-light">V. HARAPAN ORANG TUA</th></tr>
                                <tr><td colspan="2">{{ $pendaftaran->harapan_ortu }}</td></tr>
                            </table>
                            <div class="mt-2">
                                <a href="{{ route('backend-pendaftaran.index') }}" class="btn btn-secondary">Kembali</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
