<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Guru;
use App\Models\Siswa;
use App\Models\Kelas;
use App\Models\MataPelajaran;
use App\Models\Jadwal;
use App\Models\Nilai;
use App\Models\TahunAjaran;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;
use Illuminate\Support\Str;

class DummyDataSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('id_ID');

        // 1. Tahun Ajaran
        $ta = TahunAjaran::firstOrCreate(
            ['nama' => '2024/2025', 'semester' => 'Ganjil'],
            ['is_active' => 1]
        );

        // 2. Mata Pelajaran
        $mapels = ['Matematika', 'Bahasa Indonesia', 'Bahasa Inggris', 'Ilmu Pengetahuan Alam', 'Ilmu Pengetahuan Sosial', 'Pendidikan Kewarganegaraan'];
        $mapel_ids = [];
        foreach ($mapels as $index => $mapel) {
            $kode = 'MP' . str_pad($index + 1, 3, '0', STR_PAD_LEFT);
            $m = MataPelajaran::firstOrCreate(
                ['nama_mapel' => $mapel],
                ['kode_mapel' => $kode]
            );
            $mapel_ids[] = $m->id;
        }

        // 3. Guru
        $guru_ids = [];
        for ($i = 0; $i < 5; $i++) {
            $namaGuru = $faker->name;
            $email = 'guru' . ($i + 1) . '@guru.com';
            $user = User::firstOrCreate(
                ['email' => $email],
                [
                    'name' => $namaGuru,
                    'username' => 'guru' . ($i + 1),
                    'password' => Hash::make('password'),
                    'role' => 'Guru',
                    'status' => 'Aktif',
                ]
            );
            $user->assignRole('Guru');

            $guru = Guru::firstOrCreate(
                ['user_id' => $user->id],
                [
                    'nip' => $faker->unique()->numerify('198#########'),
                    'nama' => $namaGuru,
                    'jenis_kelamin' => $faker->randomElement(['Laki-laki', 'Perempuan']),
                    'telepon' => $faker->phoneNumber,
                    'alamat' => $faker->address,
                ]
            );
            $guru_ids[] = $guru->id;
        }

        // 4. Kelas
        $nama_kelas = ['1A', '1B', '2A', '2B', '3A', '3B', '4A', '5A', '6A'];
        $kelas_ids = [];
        foreach ($nama_kelas as $index => $nk) {
            $kelas = Kelas::firstOrCreate(
                ['nama_kelas' => $nk],
                [
                    'tahun_ajaran_id' => $ta->id,
                    'wali_kelas_id' => $faker->randomElement($guru_ids),
                ]
            );
            $kelas_ids[] = $kelas->id;
        }

        // 5. Siswa
        $siswa_ids = [];
        foreach ($kelas_ids as $k_id) {
            // 5 siswa per kelas
            for ($i = 0; $i < 5; $i++) {
                $namaSiswa = $faker->name;
                $email = 'siswa_' . $k_id . '_' . $i . '@siswa.com';
                $user = User::firstOrCreate(
                    ['email' => $email],
                    [
                        'name' => $namaSiswa,
                        'username' => 'siswa_' . $k_id . '_' . $i,
                        'password' => Hash::make('password'),
                        'role' => 'Siswa',
                        'status' => 'Aktif',
                    ]
                );
                $user->assignRole('Siswa');

                $siswa = Siswa::firstOrCreate(
                    ['user_id' => $user->id],
                    [
                        'nis' => $faker->unique()->numerify('2024#####'),
                        'nama' => $namaSiswa,
                        'jenis_kelamin' => $faker->randomElement(['Laki-laki', 'Perempuan']),
                        'kelas_id' => $k_id,
                        'alamat' => $faker->address,
                        'telepon' => $faker->phoneNumber,
                        'status' => 'Aktif',
                    ]
                );
                $siswa_ids[] = $siswa->id;
            }
        }

        // 6. Jadwal
        $hari = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];
        foreach ($kelas_ids as $k_id) {
            foreach ($hari as $h) {
                Jadwal::firstOrCreate([
                    'kelas_id' => $k_id,
                    'hari' => $h,
                    'jam_mulai' => '07:30',
                ], [
                    'mata_pelajaran_id' => $faker->randomElement($mapel_ids),
                    'guru_id' => $faker->randomElement($guru_ids),
                    'jam_selesai' => '09:00',
                ]);
                
                Jadwal::firstOrCreate([
                    'kelas_id' => $k_id,
                    'hari' => $h,
                    'jam_mulai' => '09:30',
                ], [
                    'mata_pelajaran_id' => $faker->randomElement($mapel_ids),
                    'guru_id' => $faker->randomElement($guru_ids),
                    'jam_selesai' => '11:00',
                ]);
            }
        }

        // 7. Nilai
        $jenis_nilai = ['Tugas', 'UTS', 'UAS'];
        $semua_siswa = Siswa::all();
        foreach ($semua_siswa as $siswa) {
            // Ambil 3 mapel random untuk siswa ini
            $random_mapels = $faker->randomElements($mapel_ids, 3);
            foreach ($random_mapels as $m_id) {
                foreach ($jenis_nilai as $jn) {
                    Nilai::firstOrCreate([
                        'siswa_id' => $siswa->id,
                        'mata_pelajaran_id' => $m_id,
                        'kelas_id' => $siswa->kelas_id,
                        'tahun_ajaran_id' => $ta->id,
                        'jenis_nilai' => $jn,
                    ], [
                        'nilai' => $faker->numberBetween(65, 100),
                    ]);
                }
            }
        }
    }
}
