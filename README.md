# Portofolio Bagoongyoo

Website statis (HTML, CSS, JavaScript) tanpa build. Siap di-push ke GitHub dan di-deploy ke Vercel.

```
index.html        halaman utama (teks bio, link WhatsApp/Instagram ada di sini)
assets/foto.jpg   foto di bagian awal
video/            taruh video preview di sini
tools/            daftar reel dan skrip pengunduh
vercel.json       pengaturan cache
```

## 1. Push ke GitHub

Buat repository kosong di github.com (misalnya `portofolio-bagoongyoo`), lalu jalankan di folder ini:

```
git init
git add .
git commit -m "Portofolio pertama"
git branch -M main
git remote add origin https://github.com/USERNAME/portofolio-bagoongyoo.git
git push -u origin main
```

Ganti `USERNAME` dengan username GitHub kamu.

## 2. Deploy di Vercel

1. Buka vercel.com, login dengan akun GitHub, lalu klik **Add New > Project**.
2. Pilih repository `portofolio-bagoongyoo` dan klik **Import**.
3. Framework Preset: **Other**. Kosongkan Build Command dan Output Directory.
4. Klik **Deploy**. Setiap `git push` berikutnya otomatis memperbarui website.

## 3. Preview video otomatis (tanpa klik)

Kartu galeri memutar `video/KODE_REEL.mp4` secara otomatis, tanpa suara dan berulang. Kode reel adalah potongan di link Instagram, contohnya `instagram.com/reel/DfHN9riJbJf/` menjadi `video/DfHN9riJbJf.mp4`. Kartu yang file videonya belum ada otomatis memakai pemutar Instagram.

Ada dua cara mengisi folder `video/`:

- **Manual:** ekspor video aslimu (MP4, sekitar 5 sampai 10 detik, 720p cukup), beri nama sesuai kode reel, lalu taruh di `video/`.
- **Skrip (Windows):** pasang yt-dlp dan ffmpeg, login Instagram di Chrome, lalu jalankan `tools/unduh-video.bat`. Skrip mengunduh 25 reel dari `tools/reels.txt` dan mengecilkannya ke `video/`. Kalau Instagram menolak, pakai cara manual.

Setelah folder `video/` terisi, jalankan `git add . && git commit -m "Tambah video" && git push`.
