<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto"><a class="navbar-brand" href="/home"><span class="brand-logo">
                        <img src="{{ asset('storage/images/logo/' . \App\Models\Footer::first()->logo) }}" alt="logo" height="35"></span>
                    <h2 class="brand-text">Dashboard</h2>
                </a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i><i class="d-none d-xl-block collapse-toggle-icon font-medium-4  text-primary" data-feather="disc" data-ticon="disc"></i></a></li>
        </ul>
    </div>
    <div class="shadow-bottom"></div>

    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class=" nav-item {{ (request()->is('home')) ? 'active' : '' }}">
                <a class="d-flex align-items-center" href="/home"><i data-feather="home"></i>
                    <span class="menu-title text-truncate" data-i18n="Dashboards">Dashboard</span>
                </a>
            </li>

            {{-- MENU ADMIN --}}
            @if (in_array(Auth::user()->role, ['Admin', 'Staf', 'Kepsek']))
            <li class=" nav-item">
                <a class="d-flex align-items-center" href="#"><i data-feather="database"></i>
                    <span class="menu-title text-truncate" data-i18n="Data Sekolah">Data Sekolah</span>
                </a>
                <ul class="menu-content">
                    <li class="nav-item {{ (request()->is('backend-kegiatan')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-kegiatan.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Kegiatan</span>
                        </a>
                    </li>
                    <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Second Level">Tentang</span></a>
                        <ul class="menu-content">
                            <li class="nav-item {{ (request()->is('backend-profile-sekolah')) ? 'active' : '' }}">
                                <a class="d-flex align-items-center" href="{{route('backend-profile-sekolah.index')}}"><span class="menu-item text-truncate" data-i18n="Third Level">Profile Sekolah</span></a>
                            </li>
                            <li class="nav-item {{ (request()->is('backend-visimisi')) ? 'active' : '' }}">
                                <a class="d-flex align-items-center" href="{{route('backend-visimisi.index')}}"><span class="menu-item text-truncate" data-i18n="Third Level">Visi dan Misi</span></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class=" nav-item">
                <a class="d-flex align-items-center" href="#"><i data-feather="file-text"></i>
                    <span class="menu-title text-truncate" data-i18n="Card">Berita</span>
                </a>
                <ul class="menu-content">
                    <li class="nav-item {{ (request()->is('backend-berita')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-berita.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Data Berita</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('backend-kategori-berita')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-kategori-berita.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Kategori Berita</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('backend-event')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-event.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Event</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class=" nav-item">
                <a class="d-flex align-items-center" href="#"><i data-feather="globe"></i>
                    <span class="menu-title text-truncate" data-i18n="Card">Website</span>
                </a>
                <ul class="menu-content">
                    <li class="nav-item {{ (request()->is('backend-about')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-about.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">About</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('backend-imageslider')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-imageslider.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Gambar Slider</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('backend-video')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-video.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Video</span>
                        </a>
                    </li>

                    <li class="nav-item {{ (request()->is('backend-footer')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-footer.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Footer</span>
                        </a>
                    </li>

                </ul>
            </li>

            <li class=" nav-item">
                <a class="d-flex align-items-center" href="#"><i data-feather="book-open"></i>
                    <span class="menu-title text-truncate" data-i18n="Card">Akademik</span>
                </a>
                <ul class="menu-content">
                    <li class="nav-item {{ (request()->is('tahun-ajaran*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('tahun-ajaran.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Tahun Ajaran</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('kelas*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('kelas.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Kelas</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('guru*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('guru.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Data Guru</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('siswa*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('siswa.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Data Siswa</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('mata-pelajaran*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('mata-pelajaran.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Mata Pelajaran</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('jadwal*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('jadwal.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Jadwal Pelajaran</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('nilai*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('nilai.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Data Nilai</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class=" nav-item">
                <a class="d-flex align-items-center" href="#"><i data-feather="users"></i>
                    <span class="menu-title text-truncate" data-i18n="Card">Pengguna</span>
                </a>
                <ul class="menu-content">
                    <li class="nav-item {{ (request()->is('pengguna/backend-pengguna-pengajar*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-pengguna-pengajar.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Pengajar / Guru</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('pengguna/backend-pengguna-staf*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-pengguna-staf.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Staf / Admin</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('pengguna/backend-pengguna-murid*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('backend-pengguna-murid.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Basic">Murid / Siswa</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class=" nav-item {{ (request()->is('pendaftaran*')) ? 'active' : '' }}">
                <a class="d-flex align-items-center" href="{{ route('backend-pendaftaran.index') }}"><i data-feather="users"></i>
                    <span class="menu-title text-truncate" data-i18n="PPDB">Data PPDB</span>
                </a>
            </li>

            {{-- MENU GURU --}}
            @elseif(Auth::user()->role == 'Guru')
            <li class=" nav-item">
                <a class="d-flex align-items-center" href="#"><i data-feather="book-open"></i>
                    <span class="menu-title text-truncate" data-i18n="Akademik">Akademik</span>
                </a>
                <ul class="menu-content">
                    <li class="nav-item {{ (request()->is('guru/jadwal*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('guru.jadwal.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Jadwal">Jadwal Mengajar</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('guru/nilai*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('guru.nilai.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Nilai">Input Nilai</span>
                        </a>
                    </li>
                </ul>
            </li>

            {{-- MENU SISWA --}}
            @elseif(in_array(Auth::user()->role, ['Siswa', 'Murid']))
            <li class=" nav-item">
                <a class="d-flex align-items-center" href="#"><i data-feather="book-open"></i>
                    <span class="menu-title text-truncate" data-i18n="Akademik">Akademik</span>
                </a>
                <ul class="menu-content">
                    <li class="nav-item {{ (request()->is('siswa/jadwal*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('siswa.jadwal.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Jadwal">Jadwal Pelajaran</span>
                        </a>
                    </li>
                    <li class="nav-item {{ (request()->is('siswa/nilai*')) ? 'active' : '' }}">
                        <a class="d-flex align-items-center" href=" {{route('siswa.nilai.index')}} "><i data-feather="circle"></i>
                            <span class="menu-item text-truncate" data-i18n="Nilai">Lihat Nilai</span>
                        </a>
                    </li>
                </ul>
            </li>

            @endif

            {{-- MENU LOGOUT UNTUK SEMUA ROLE --}}
            <li class=" nav-item mt-5">
                <a class="d-flex align-items-center" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form-sidebar').submit();">
                    <i data-feather="log-out" class="text-danger"></i>
                    <span class="menu-title text-truncate text-danger" data-i18n="Logout">Logout</span>
                </a>
                <form id="logout-form-sidebar" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
            </li>
        </ul>
    </div>
</div>
