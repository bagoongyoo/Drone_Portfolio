@echo off
REM Unduh reel dari daftar tools\reels.txt lalu kecilkan jadi video/KODE_REEL.mp4
REM Butuh: yt-dlp dan ffmpeg terpasang, serta sudah login Instagram di Chrome.
cd /d "%~dp0.."
if not exist raw mkdir raw
if not exist video mkdir video
yt-dlp --cookies-from-browser chrome -a tools\reels.txt -o "raw/%%(id)s.%%(ext)s"
for %%f in (raw\*.*) do ffmpeg -y -i "%%f" -t 10 -an -vf "scale=-2:640" -c:v libx264 -crf 27 -preset veryfast -movflags +faststart "video\%%~nf.mp4"
echo Selesai. Cek folder video, lalu commit dan push ke GitHub.
pause
