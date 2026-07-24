<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Berita;
use App\Models\Events;
use App\Models\KategoriBerita;
use App\Models\User;
use Faker\Factory as Faker;
use Illuminate\Support\Str;

class BeritaEventSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('id_ID');
        $admin = User::where('role', 'Admin')->first();
        $admin_id = $admin ? $admin->id : 1;

        // 1. Kategori Berita
        $kategoris = ['Akademik', 'Prestasi', 'Ekstrakurikuler', 'Pengumuman'];
        $kategori_ids = [];
        foreach ($kategoris as $kategori) {
            $k = KategoriBerita::firstOrCreate(
                ['nama' => $kategori],
                ['is_active' => '0']
            );
            $kategori_ids[] = $k->id;
        }

        // 2. Berita
        for ($i = 0; $i < 10; $i++) {
            $title = $faker->sentence(6);
            Berita::firstOrCreate(
                ['title' => $title],
                [
                    'slug' => Str::slug($title),
                    'content' => '<p>' . implode('</p><p>', $faker->paragraphs(5)) . '</p>',
                    'kategori_id' => $faker->randomElement($kategori_ids),
                    'thumbnail' => 'berita_thumb.png',
                    'is_active' => '0',
                    'created_by' => $admin_id,
                ]
            );
        }

        // 3. Events
        for ($i = 0; $i < 5; $i++) {
            $title = $faker->sentence(4) . ' ' . $faker->year;
            Events::firstOrCreate(
                ['title' => $title],
                [
                    'slug' => Str::slug($title),
                    'desc' => $faker->paragraph(2),
                    'content' => '<p>' . $faker->sentence(10) . '</p>',
                    'thumbnail' => 'event_thumb.png',
                    'acara' => $faker->dateTimeBetween('now', '+1 year'),
                    'lokasi' => 'Lapangan Utama Sekolah',
                    'is_active' => '0', // 0 usually means active in some of these old codes, let's match default
                ]
            );
        }
    }
}
