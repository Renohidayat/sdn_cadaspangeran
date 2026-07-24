@extends('layouts.Frontend.app')

@section('title')
    Kontak Kami
@endsection

@section('content')
    <div class="contact-us-page1-area" style="padding: 50px 0;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                            <div class="contact-us-left">
                                <h2 class="title-default-left title-bar-high">Hubungi Kami</h2>
                                <p>Jika Anda memiliki pertanyaan seputar kegiatan, informasi pendaftaran, atau keperluan lainnya, jangan ragu untuk menghubungi kami melalui informasi di bawah ini atau datang langsung ke lokasi sekolah.</p>
                                
                                <div class="contact-info" style="margin-top: 30px;">
                                    <div style="display: flex; align-items: flex-start; margin-bottom: 20px;">
                                        <i class="fa fa-map-marker" aria-hidden="true" style="font-size: 24px; color: #002147; margin-right: 15px; margin-top: 5px;"></i>
                                        <div>
                                            <h4 style="margin: 0; font-weight: bold; color: #333;">Alamat Lengkap</h4>
                                            <p style="margin: 5px 0 0; color: #555; line-height: 1.6;">
                                                SD Negeri Cadas Pangeran <br>
                                                Jl. Raya Cadaspangeran KM 08 Desa Ciherang <br>
                                                Kecamatan Sumedang Selatan
                                            </p>
                                        </div>
                                    </div>
                                    <div style="display: flex; align-items: flex-start; margin-bottom: 20px;">
                                        <i class="fa fa-phone" aria-hidden="true" style="font-size: 24px; color: #002147; margin-right: 15px; margin-top: 5px;"></i>
                                        <div>
                                            <h4 style="margin: 0; font-weight: bold; color: #333;">Telepon</h4>
                                            <p style="margin: 5px 0 0; color: #555;">{{ @$footer->telp ?? 'Belum ada nomor telepon' }}</p>
                                        </div>
                                    </div>
                                    <div style="display: flex; align-items: flex-start; margin-bottom: 20px;">
                                        <i class="fa fa-envelope" aria-hidden="true" style="font-size: 24px; color: #002147; margin-right: 15px; margin-top: 5px;"></i>
                                        <div>
                                            <h4 style="margin: 0; font-weight: bold; color: #333;">Email</h4>
                                            <p style="margin: 5px 0 0; color: #555;">{{ @$footer->email ?? 'Belum ada email' }}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-us-right">
                                <!-- Lokasi Maps atau gambar sekolah bisa ditambahkan di sini -->
                                <img src="{{asset('Assets/Frontend/img/about/1.jpg')}}" alt="kontak sekolah" class="img-responsive" style="border-radius: 10px; width: 100%; object-fit: cover;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
