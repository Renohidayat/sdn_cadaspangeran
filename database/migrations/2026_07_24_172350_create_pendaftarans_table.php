<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePendaftaransTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pendaftarans', function (Blueprint $table) {
            $table->id();
            // I. DATA CALON SISWA BARU
            $table->string('nama_lengkap');
            $table->string('nama_panggilan');
            $table->enum('jenis_kelamin', ['Laki-Laki', 'Perempuan']);
            $table->string('ttl');
            $table->text('alamat');
            $table->enum('kewarganegaraan', ['WNI', 'WNA']);
            $table->string('anak_ke');
            $table->string('berat_badan');
            $table->string('tinggi_badan');
            
            // II. KETERANGAN KESEHATAN
            $table->string('penyakit_khusus')->nullable();
            
            // III. DATA ORANGTUA/WALI
            // Data Ayah
            $table->string('nama_ayah');
            $table->string('pekerjaan_ayah');
            $table->string('pendidikan_ayah');
            $table->enum('kewarganegaraan_ayah', ['WNI', 'WNA']);
            $table->string('nohp_ayah');
            $table->string('email_ayah');
            $table->string('penghasilan_ayah');
            
            // Data Ibu
            $table->string('nama_ibu');
            $table->string('pekerjaan_ibu');
            $table->string('pendidikan_ibu');
            $table->enum('kewarganegaraan_ibu', ['WNI', 'WNA']);
            $table->string('agama');
            $table->string('nohp_ibu');
            $table->string('penghasilan_ibu');
            
            // IV. UPLOAD DOKUMEN
            $table->string('file_akte')->nullable();
            $table->string('file_bukti_tf')->nullable();
            
            // V. HARAPAN ORANG TUA
            $table->text('harapan_ortu');
            
            // Status
            $table->enum('status_pendaftaran', ['Pending', 'Diterima', 'Ditolak'])->default('Pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pendaftarans');
    }
}
