<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nilai extends Model
{
    use HasFactory;

    protected $fillable = ['siswa_id', 'mata_pelajaran_id', 'kelas_id', 'tahun_ajaran_id', 'jenis_nilai', 'nilai'];

    public function siswa() {
        return $this->belongsTo(Siswa::class);
    }

    public function mataPelajaran() {
        return $this->belongsTo(MataPelajaran::class);
    }

    public function kelas() {
        return $this->belongsTo(Kelas::class);
    }

    public function tahunAjaran() {
        return $this->belongsTo(TahunAjaran::class);
    }
}
