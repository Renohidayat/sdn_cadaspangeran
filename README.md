# SIAKAD — Sistem Informasi Akademik SD Negeri Cadas Pangeran

> **Rancang Bangun Sistem Informasi Akademik Pada SD Cadas Pangeran Dengan Metode Rapid Application Development (RAD)**

Sistem Informasi Akademik (SIAKAD) berbasis website untuk SD Negeri Cadas Pangeran, Kecamatan Sumedang Selatan. Dibangun menggunakan **Laravel 8** sebagai bagian dari penelitian skripsi di Program Studi Informatika, Universitas Sebelas April.

---

## 📋 Daftar Isi

- [Fitur](#-fitur)
- [Teknologi](#-teknologi)
- [Prasyarat](#-prasyarat)
- [Instalasi](#-instalasi)
- [Menjalankan Aplikasi](#-menjalankan-aplikasi)
- [Akun Default](#-akun-default)
- [Struktur Menu](#-struktur-menu)
- [Screenshot](#-screenshot)
- [Lisensi](#-lisensi)

---

## ✨ Fitur

### 🌐 Website Publik (Frontend)
- **Beranda** — Slider gambar, tentang sekolah, daftar pengajar, berita & event terbaru
- **Profil Sekolah** — Informasi lengkap tentang sekolah
- **Visi & Misi** — Visi dan misi SD Negeri Cadas Pangeran
- **Berita** — Daftar berita sekolah dengan detail dan kategori
- **Event / Acara** — Informasi kegiatan dan acara sekolah
- **Kegiatan** — Dokumentasi kegiatan ekstrakurikuler dan sekolah
- **PPDB Online** — Formulir pendaftaran peserta didik baru secara online (upload akte & bukti transfer)
- **Kontak** — Halaman informasi kontak dan alamat sekolah

### 🔐 Panel Admin / Staf (Backend)
- **Dashboard** — Statistik jumlah guru, siswa, kelas, berita, pendaftar PPDB, dan event
- **Kelola Data Akademik:**
  - Data Guru (NIP, Nama, Jenis Kelamin, Telepon, Alamat)
  - Data Siswa (NIS, Nama, Jenis Kelamin, Kelas, Alamat, Telepon)
  - Data Kelas (Nama Kelas, Tahun Ajaran, Wali Kelas)
  - Mata Pelajaran (Kode Mapel, Nama Mapel)
  - Jadwal Pelajaran (Kelas, Mapel, Guru, Hari, Jam)
  - Tahun Ajaran (Nama, Semester, Status Aktif)
  - Nilai Siswa (Siswa, Mapel, Kelas, Tahun Ajaran, Jenis Nilai, Nilai)
- **Kelola Konten Website:**
  - Berita (CRUD + Kategori Berita)
  - Event / Acara
  - Kegiatan
  - Image Slider
  - Tentang Kami (About)
  - Footer & Profil Sekolah
  - Visi dan Misi
- **Kelola Pengguna:** Pengajar, Murid, Staf, PPDB
- **Kelola Pendaftaran (PPDB):** Lihat, verifikasi, dan hapus data pendaftar
- **Pengaturan Profil & Ganti Password**

### 👨‍🏫 Panel Guru
- **Dashboard** — Ucapan selamat datang, jumlah jadwal mengajar, info event terbaru
- **Jadwal Mengajar** — Melihat jadwal berdasarkan akun guru yang login
- **Input Nilai** — Menginput nilai siswa berdasarkan kelas dan mata pelajaran

### 👨‍🎓 Panel Siswa
- **Dashboard** — Ucapan selamat datang, informasi kelas, info event terbaru
- **Jadwal Pelajaran** — Melihat jadwal sesuai kelas siswa
- **Lihat Nilai** — Melihat nilai akademik per mata pelajaran

---

## 🛠 Teknologi

| Komponen | Teknologi |
|----------|-----------|
| Framework | Laravel 8.83 |
| Bahasa | PHP 8.2 |
| Database | MySQL |
| Frontend Template | Vuexy Admin (Backend), EduLand (Frontend) |
| CSS Framework | Bootstrap |
| JavaScript | jQuery |
| Server Lokal | XAMPP |
| Metodologi | Rapid Application Development (RAD) |

---

## 📦 Prasyarat

Pastikan perangkat Anda sudah terinstal:

- **PHP** >= 8.0
- **Composer** ([Download](https://getcomposer.org/download))
- **MySQL** (bisa menggunakan XAMPP / Laragon)
- **Node.js & NPM** ([Download](https://nodejs.org/en/download)) — opsional, untuk kompilasi assets

---

## 🚀 Instalasi

1. **Clone repository**
   ```bash
   git clone https://github.com/andes2912/sekolahku.git sdn_cadaspangeran
   cd sdn_cadaspangeran
   ```

2. **Install dependensi PHP**
   ```bash
   composer install
   ```

3. **Salin file environment**
   ```bash
   cp .env.example .env
   ```

4. **Konfigurasi database** — Edit file `.env` dan sesuaikan:
   ```env
   DB_DATABASE=sdn_cadaspangeran
   DB_USERNAME=root
   DB_PASSWORD=
   ```

5. **Generate application key**
   ```bash
   php artisan key:generate
   ```

6. **Jalankan migrasi & seeder**
   ```bash
   php artisan migrate --seed
   ```

7. **Buat symbolic link untuk storage**
   ```bash
   php artisan storage:link
   ```

---

## ▶ Menjalankan Aplikasi

```bash
php artisan serve
```

Buka browser dan akses: **http://127.0.0.1:8000**

---

## 🔑 Akun Default

| Role | Email / Username | Password |
|------|-----------------|----------|
| Admin | `kepsek@sch.id` | `Bismillah` |
| Staf | (lihat di database) | `12345678` |
| Guru | (lihat di database) | `12345678` |
| Siswa | (lihat di database) | `12345678` |

---

## 📂 Struktur Menu

```
├── Website Publik
│   ├── Beranda (Slider, About, Pengajar, Berita, Event)
│   ├── Tentang Kami
│   │   ├── Profil Sekolah
│   │   └── Visi dan Misi
│   ├── Berita
│   ├── Event
│   ├── Kegiatan
│   ├── PPDB (Pendaftaran Online)
│   └── Kontak
│
├── Panel Admin / Staf
│   ├── Dashboard (Statistik Guru, Siswa, Kelas, Berita, PPDB)
│   ├── Website
│   │   ├── Profil Sekolah
│   │   ├── Visi & Misi
│   │   ├── Image Slider
│   │   ├── About
│   │   ├── Berita & Kategori
│   │   ├── Event
│   │   ├── Kegiatan
│   │   └── Footer
│   ├── Akademik
│   │   ├── Tahun Ajaran
│   │   ├── Kelas
│   │   ├── Data Guru
│   │   ├── Data Siswa
│   │   ├── Mata Pelajaran
│   │   ├── Jadwal
│   │   └── Nilai
│   ├── Pengguna
│   │   ├── Pengajar
│   │   ├── Murid
│   │   └── Staf
│   ├── Pendaftaran (PPDB)
│   └── Profil & Pengaturan
│
├── Panel Guru
│   ├── Dashboard
│   ├── Jadwal Mengajar
│   └── Input Nilai
│
└── Panel Siswa
    ├── Dashboard
    ├── Jadwal Pelajaran
    └── Lihat Nilai
```

---

## 📸 Screenshot

Jalankan aplikasi dan akses halaman berikut untuk melihat tampilan:

| Halaman | URL |
|---------|-----|
| Beranda | `http://127.0.0.1:8000` |
| Login Admin | `http://127.0.0.1:8000/login/admin` |
| Login Guru | `http://127.0.0.1:8000/login/guru` |
| Login Siswa | `http://127.0.0.1:8000/login/siswa` |
| PPDB | `http://127.0.0.1:8000/ppdb` |
| Kontak | `http://127.0.0.1:8000/kontak` |
| Diagram Skripsi | `http://127.0.0.1:8000/diagram_skripsi.html` |


---

## 📄 Lisensi

Proyek ini dikembangkan untuk keperluan skripsi akademik.
Framework Laravel dilisensikan di bawah [MIT License](https://opensource.org/licenses/MIT).

