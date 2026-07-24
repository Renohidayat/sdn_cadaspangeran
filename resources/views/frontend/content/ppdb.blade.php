@extends('layouts.Frontend.app')
@section('title')
    Pendaftaran Siswa Baru
@endsection

@section('content')
    <div class="container" style="margin-top: 50px; margin-bottom: 50px;">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-primary">
                    <div class="panel-heading" style="background-color: #002147; color: white;">
                        <h3 class="panel-title text-center" style="font-size: 24px; padding: 10px;">Formulir Penerimaan Peserta Didik Baru (PPDB)</h3>
                    </div>
                    <div class="panel-body" style="padding: 30px; background-color: #f9f9f9;">
                        @if (Session::has('success'))
                            <div class="alert alert-success">
                                {{ Session::get('success') }}
                            </div>
                        @endif

                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <form action="{{ route('ppdb.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <!-- I. DATA CALON SISWA BARU -->
                            <h4 style="border-bottom: 2px solid #002147; padding-bottom: 10px; margin-top: 20px;">I. DATA CALON SISWA BARU</h4>
                            
                            <div class="form-group">
                                <label>Nama Lengkap *</label>
                                <input type="text" name="nama_lengkap" class="form-control" required value="{{ old('nama_lengkap') }}">
                            </div>

                            <div class="form-group">
                                <label>Nama Panggilan *</label>
                                <input type="text" name="nama_panggilan" class="form-control" required value="{{ old('nama_panggilan') }}">
                            </div>

                            <div class="form-group">
                                <label>Jenis Kelamin *</label>
                                <select name="jenis_kelamin" class="form-control" required>
                                    <option value="">-- Pilih Jenis Kelamin --</option>
                                    <option value="Laki-Laki" {{ old('jenis_kelamin') == 'Laki-Laki' ? 'selected' : '' }}>Laki-Laki</option>
                                    <option value="Perempuan" {{ old('jenis_kelamin') == 'Perempuan' ? 'selected' : '' }}>Perempuan</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Tempat dan Tanggal Lahir *</label>
                                <input type="text" name="ttl" class="form-control" placeholder="Contoh: Jakarta, 17 Agustus 2016" required value="{{ old('ttl') }}">
                            </div>

                            <div class="form-group">
                                <label>Alamat Lengkap *</label>
                                <p class="help-block">(Isikan alamat rumah lengkap: Jalan/Gang, Nomor rumah, RT, RW, Kecamatan, Kelurahan, Kota/Kabupaten, Provinsi, Kode Pos)</p>
                                <textarea name="alamat" class="form-control" rows="4" required>{{ old('alamat') }}</textarea>
                            </div>

                            <div class="form-group">
                                <label>Kewarganegaraan *</label>
                                <select name="kewarganegaraan" class="form-control" required>
                                    <option value="">-- Pilih Kewarganegaraan --</option>
                                    <option value="WNI" {{ old('kewarganegaraan') == 'WNI' ? 'selected' : '' }}>WNI</option>
                                    <option value="WNA" {{ old('kewarganegaraan') == 'WNA' ? 'selected' : '' }}>WNA</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Anak ke dari (contoh: 2 dari 5 bersaudara) *</label>
                                <input type="text" name="anak_ke" class="form-control" required value="{{ old('anak_ke') }}">
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Berat Badan (Kg) *</label>
                                        <input type="number" name="berat_badan" class="form-control" required value="{{ old('berat_badan') }}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Tinggi Badan (cm) *</label>
                                        <input type="number" name="tinggi_badan" class="form-control" required value="{{ old('tinggi_badan') }}">
                                    </div>
                                </div>
                            </div>

                            <!-- II. KETERANGAN KESEHATAN -->
                            <h4 style="border-bottom: 2px solid #002147; padding-bottom: 10px; margin-top: 30px;">II. KETERANGAN KESEHATAN</h4>
                            <p>Diisi data riwayat kesehatan calon Siswa</p>
                            <div class="form-group">
                                <label>Penyakit khusus yang diderita (Asma, TBC, Jantung, Kebutuhan khusus, dll)</label>
                                <input type="text" name="penyakit_khusus" class="form-control" placeholder="Kosongkan jika tidak ada" value="{{ old('penyakit_khusus') }}">
                            </div>

                            <!-- III. DATA ORANGTUA/WALI -->
                            <h4 style="border-bottom: 2px solid #002147; padding-bottom: 10px; margin-top: 30px;">III. DATA ORANGTUA/WALI</h4>
                            <div class="row">
                                <div class="col-md-6">
                                    <h5 style="font-weight: bold;">Data Ayah</h5>
                                    <div class="form-group">
                                        <label>Nama Ayah *</label>
                                        <input type="text" name="nama_ayah" class="form-control" required value="{{ old('nama_ayah') }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Jenis Pekerjaan *</label>
                                        <input type="text" name="pekerjaan_ayah" class="form-control" placeholder="Contoh: Karyawan Swasta" required value="{{ old('pekerjaan_ayah') }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Pendidikan Terakhir *</label>
                                        <select name="pendidikan_ayah" class="form-control" required>
                                            <option value="">-- Pilih Pendidikan --</option>
                                            <option value="SD">SD</option>
                                            <option value="SMP">SMP</option>
                                            <option value="SMA/SMK">SMA/SMK</option>
                                            <option value="D3">D3</option>
                                            <option value="S1">S1</option>
                                            <option value="S2">S2</option>
                                            <option value="S3">S3</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Kewarganegaraan *</label>
                                        <select name="kewarganegaraan_ayah" class="form-control" required>
                                            <option value="">-- Pilih --</option>
                                            <option value="WNI">WNI</option>
                                            <option value="WNA">WNA</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Nomor HP/WA *</label>
                                        <input type="text" name="nohp_ayah" class="form-control" required value="{{ old('nohp_ayah') }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Email *</label>
                                        <input type="email" name="email_ayah" class="form-control" required value="{{ old('email_ayah') }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Penghasilan/Bulan *</label>
                                        <select name="penghasilan_ayah" class="form-control" required>
                                            <option value="">-- Pilih Penghasilan --</option>
                                            <option value="1 - 5 Juta">1 - 5 Juta</option>
                                            <option value="5 - 10 Juta">5 - 10 Juta</option>
                                            <option value="10 - 15 Juta">10 - 15 Juta</option>
                                            <option value="15 - 20 Juta">15 - 20 Juta</option>
                                            <option value="> 20 Juta">> 20 Juta</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <h5 style="font-weight: bold;">Data Ibu</h5>
                                    <div class="form-group">
                                        <label>Nama Ibu *</label>
                                        <input type="text" name="nama_ibu" class="form-control" required value="{{ old('nama_ibu') }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Jenis Pekerjaan *</label>
                                        <input type="text" name="pekerjaan_ibu" class="form-control" placeholder="Contoh: Ibu Rumah Tangga" required value="{{ old('pekerjaan_ibu') }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Pendidikan Terakhir *</label>
                                        <select name="pendidikan_ibu" class="form-control" required>
                                            <option value="">-- Pilih Pendidikan --</option>
                                            <option value="SD">SD</option>
                                            <option value="SMP">SMP</option>
                                            <option value="SMA/SMK">SMA/SMK</option>
                                            <option value="D3">D3</option>
                                            <option value="S1">S1</option>
                                            <option value="S2">S2</option>
                                            <option value="S3">S3</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Kewarganegaraan *</label>
                                        <select name="kewarganegaraan_ibu" class="form-control" required>
                                            <option value="">-- Pilih --</option>
                                            <option value="WNI">WNI</option>
                                            <option value="WNA">WNA</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Agama *</label>
                                        <input type="text" name="agama" class="form-control" required value="{{ old('agama') }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Nomor HP/WA *</label>
                                        <input type="text" name="nohp_ibu" class="form-control" required value="{{ old('nohp_ibu') }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Penghasilan/Bulan *</label>
                                        <select name="penghasilan_ibu" class="form-control" required>
                                            <option value="">-- Pilih Penghasilan --</option>
                                            <option value="Tidak Ada">Tidak Ada</option>
                                            <option value="1 - 5 Juta">1 - 5 Juta</option>
                                            <option value="5 - 10 Juta">5 - 10 Juta</option>
                                            <option value="10 - 15 Juta">10 - 15 Juta</option>
                                            <option value="15 - 20 Juta">15 - 20 Juta</option>
                                            <option value="> 20 Juta">> 20 Juta</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- IV. UPLOAD DOKUMEN -->
                            <h4 style="border-bottom: 2px solid #002147; padding-bottom: 10px; margin-top: 30px;">IV. UPLOAD DOKUMEN</h4>
                            <p>Silahkan Upload dokumen-dokumen penunjang pendaftaran berikut ini:</p>
                            <div class="form-group">
                                <label>Scan Akte Kelahiran *</label>
                                <p class="help-block">Upload 1 file yang didukung (JPG, PNG, PDF). Maks 10 MB.</p>
                                <input type="file" name="file_akte" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Bukti Transfer Pendaftaran *</label>
                                <p class="help-block">Mohon lampirkan bukti transfer pendaftaran. Upload 1 file yang didukung (JPG, PNG, PDF). Maks 10 MB.</p>
                                <input type="file" name="file_bukti_tf" class="form-control" required>
                            </div>

                            <!-- V. HARAPAN ORANG TUA -->
                            <h4 style="border-bottom: 2px solid #002147; padding-bottom: 10px; margin-top: 30px;">V. HARAPAN ORANG TUA</h4>
                            <div class="form-group">
                                <label>Apa harapan orang tua terhadap Sekolah, bagi perkembangan ananda selama belajar di sekolah? *</label>
                                <textarea name="harapan_ortu" class="form-control" rows="4" required>{{ old('harapan_ortu') }}</textarea>
                            </div>

                            <!-- PERSETUJUAN -->
                            <div class="form-group" style="margin-top: 30px;">
                                <div class="checkbox">
                                    <label style="font-weight: bold;">
                                        <input type="checkbox" required>
                                        Saya menyetujui dan mengerti bahwa seluruh isian formulir dan berkas yang diupload di atas adalah benar dan akan membawa copy dari berkas-berkas tersebut saat mengikuti test seleksi.
                                    </label>
                                </div>
                            </div>

                            <div style="text-align: center; margin-top: 40px; margin-bottom: 20px;">
                                <p><i>Alhamdulillah, Jazakallah Khairan Katsira kami ucapkan atas kerjasama Ayah Bunda dan Ananda Calon Siswa semua. Mudah-mudahan Allah SWT senantiasa memberikan kesehatan dan kemudahan dalam setiap urusan Ayah Bunda dan Ananda semua. Aamiin Yaa Rabb</i></p>
                                <p><i>Wassalamualaikum Warrohmatullahi Wabarokatuh</i></p>
                                <button type="submit" class="btn btn-primary btn-lg" style="margin-top: 20px; padding: 10px 40px; background-color: #002147; border-color: #002147;">Kirim Formulir Pendaftaran</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
