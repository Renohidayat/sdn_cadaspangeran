<?php

use App\Http\Controllers\Backend\SettingController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// ======= FRONTEND ======= \\

Route::get('/','Frontend\IndexController@index');

    ///// MENU \\\\\
        //// PROFILE SEKOLAH \\\\
        Route::get('profile-sekolah',[App\Http\Controllers\Frontend\IndexController::class,'profileSekolah'])->name('profile.sekolah');

        //// VISI dan MISI
        Route::get('visi-dan-misi',[App\Http\Controllers\Frontend\IndexController::class,'visimisi'])->name('visimisi.sekolah');

        //// PROGRAM STUDI \\\\
        Route::get('program/{slug}', [App\Http\Controllers\Frontend\MenuController::class, 'programStudi']);
        //// PROGRAM STUDI \\\\
        Route::get('kegiatan', [App\Http\Controllers\Frontend\MenuController::class, 'kegiatanAll'])->name('kegiatan');
        Route::get('kegiatan/{slug}', [App\Http\Controllers\Frontend\MenuController::class, 'kegiatan']);

        /// BERITA \\\
        Route::get('berita',[App\Http\Controllers\Frontend\IndexController::class,'berita'])->name('berita');
        Route::get('berita/{slug}',[App\Http\Controllers\Frontend\IndexController::class,'detailBerita'])->name('detail.berita');

        /// EVENT \\\
        Route::get('event/{slug}',[App\Http\Controllers\Frontend\IndexController::class,'detailEvent'])->name('detail.event');
        Route::get('event',[App\Http\Controllers\Frontend\IndexController::class,'events'])->name('event');
        Route::get('ppdb', [App\Http\Controllers\Frontend\PendaftaranController::class, 'index'])->name('ppdb');
        Route::post('ppdb', [App\Http\Controllers\Frontend\PendaftaranController::class, 'store'])->name('ppdb.store');
        Route::get('kontak', [App\Http\Controllers\Frontend\IndexController::class, 'kontak'])->name('kontak');

// Custom Login Routes
Route::get('login/admin', [App\Http\Controllers\Auth\LoginController::class, 'showAdminLoginForm'])->name('login.admin');
Route::get('login/guru', [App\Http\Controllers\Auth\LoginController::class, 'showGuruLoginForm'])->name('login.guru');
Route::get('login/siswa', [App\Http\Controllers\Auth\LoginController::class, 'showSiswaLoginForm'])->name('login.siswa');

Auth::routes(['register' => false]);


// ======= BACKEND ======= \\
Route::middleware('auth')->group(function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

     /// PROFILE \\\
    Route::resource('profile-settings',Backend\ProfileController::class);
    /// SETTINGS \\\
      Route::prefix('settings')->group( function(){
        // BANK
        Route::get('/',[App\Http\Controllers\Backend\SettingController::class,'index'])->name('settings');
        // TAMBAH BANK
        Route::post('add-bank',[App\Http\Controllers\Backend\SettingController::class,'addBank'])->name('settings.add.bank');
        // NOTIFICATIONS
        Route::put('notifications/{id}',[SettingController::class,'notifications']);
      });


    /// CHANGE PASSWORD
    Route::put('profile-settings/change-password/{id}',[App\Http\Controllers\Backend\ProfileController::class, 'changePassword'])->name('profile.change-password');

    Route::prefix('guru')->middleware('checkRole:Guru')->group( function () {
        Route::get('jadwal', [App\Http\Controllers\Backend\Guru\JadwalController::class, 'index'])->name('guru.jadwal.index');
        Route::resource('nilai', Backend\Guru\NilaiController::class)->names('guru.nilai');
    });

    Route::prefix('siswa')->middleware('checkRole:Siswa,Murid')->group( function () {
        Route::get('jadwal', [App\Http\Controllers\Backend\Siswa\JadwalController::class, 'index'])->name('siswa.jadwal.index');
        Route::get('nilai', [App\Http\Controllers\Backend\Siswa\NilaiController::class, 'index'])->name('siswa.nilai.index');
    });

    Route::prefix('/')->middleware('checkRole:Admin,Staf')->group( function (){
        ///// WEBSITE \\\\\
        Route::resources([
            /// PROFILE SEKOLAH \\
            'backend-profile-sekolah'   => Backend\Website\ProfilSekolahController::class,
            /// VISI & MISI \\\
            'backend-visimisi'  => Backend\Website\VisidanMisiController::class,
            /// KEGIATAN \\\
            'backend-kegiatan' => Backend\Website\KegiatanController::class,
            /// IMAGE SLIDER \\\
            'backend-imageslider' => Backend\Website\ImageSliderController::class,
            /// ABOUT \\\
            'backend-about' => Backend\Website\AboutController::class,
            /// VIDEO \\\
            'backend-video' => Backend\Website\VideoController::class,
            /// KATEGORI BERITA \\\
            'backend-kategori-berita'   => Backend\Website\KategoriBeritaController::class,
            /// BERITA \\\
            'backend-berita' => Backend\Website\BeritaController::class,
            /// EVENT \\\
            'backend-event' => Backend\Website\EventsController::class,
            /// FOOTER \\\
            'backend-footer'    => Backend\Website\FooterController::class,
        ]);

        ///// AKADEMIK \\\\\
        Route::resources([
            'tahun-ajaran'    => Backend\Akademik\TahunAjaranController::class,
            'kelas'           => Backend\Akademik\KelasController::class,
            'guru'            => Backend\Akademik\GuruController::class,
            'siswa'           => Backend\Akademik\SiswaController::class,
            'mata-pelajaran'  => Backend\Akademik\MataPelajaranController::class,
            'jadwal'          => Backend\Akademik\JadwalController::class,
            'nilai'           => Backend\Akademik\NilaiController::class,
        ]);

        /// PPDB \\\
        Route::get('pendaftaran', [App\Http\Controllers\Backend\PendaftaranController::class, 'index'])->name('backend-pendaftaran.index');
        Route::get('pendaftaran/{id}', [App\Http\Controllers\Backend\PendaftaranController::class, 'show'])->name('backend-pendaftaran.show');
        Route::put('pendaftaran/{id}', [App\Http\Controllers\Backend\PendaftaranController::class, 'updateStatus'])->name('backend-pendaftaran.updateStatus');
        Route::delete('pendaftaran/{id}', [App\Http\Controllers\Backend\PendaftaranController::class, 'destroy'])->name('backend-pendaftaran.destroy');

        ///// PENGGUNA \\\\\
        Route::prefix('pengguna')->group( function () {
            Route::resources([
                'backend-pengguna-pengajar' => Backend\Pengguna\PengajarController::class,
                'backend-pengguna-staf'     => Backend\Pengguna\StafController::class,
                'backend-pengguna-murid'    => Backend\Pengguna\MuridController::class,
                'backend-pengguna-ppdb'     => Backend\Pengguna\PPDBController::class,
                'backend-pengguna-perpus'   => Backend\Pengguna\PerpusController::class,
                'backend-pengguna-bendahara'=> Backend\Pengguna\BendaharaController::class,
            ]);
        });
    });
});
