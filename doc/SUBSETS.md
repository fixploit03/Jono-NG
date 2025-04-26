# Subset Attack

Subset Attack adalah teknik serangan password cracking yang berfokus pada penggunaan subset karakter tertentu yang telah ditentukan oleh penyerang, membatasi ruang pencarian hanya pada karakter-karakter tertentu saja.

## Cara Kerja:

Penyerang menentukan subset spesifik dari karakter yang ingin digunakan
Serangan hanya mencoba kombinasi dari karakter dalam subset tersebut
Mengabaikan semua karakter yang tidak termasuk dalam subset yang ditentukan
Proses dilakukan secara sistematis mencoba semua kombinasi yang mungkin dari subset tersebut

## Contoh:

- Subset `abc123`: Hanya mencoba kombinasi dari karakter `a`, `b`, `c`, `1`, `2`, dan `3`
  - Contoh percobaan: `a`, `b`, `c`, `1`, `2`, `3`,`aa`, `ab`, `ac`, `a1`, `a2`, `a3`, `ba`, `bb`, `bc`, ...
- Subset `0123456789`: Mencoba kombinasi yang hanya terdiri dari angka
  - Cocok untuk memecahkan PIN atau kata sandi numerik
- Subset `abcdefghij`: Mencoba kombinasi yang hanya menggunakan 10 huruf pertama alfabet
  - Berguna jika ada informasi bahwa kata sandi dibatasi pada karakter tersebut

## Kelebihan:

- Mengurangi waktu serangan dengan mempersempit ruang pencarian
- Sangat efisien jika diketahui karakter apa saja yang digunakan target
- Mengoptimalkan penggunaan sumber daya komputasi
- Memungkinkan penyesuaian berdasarkan informasi awal tentang karakter yang digunakan

## Kekurangan:

- Tidak akan menemukan kata sandi jika mengandung karakter di luar subset
- Membutuhkan pengetahuan atau asumsi awal tentang karakter dalam kata sandi
- Kesalahan dalam pemilihan subset akan menyebabkan kegagalan serangan
- Tidak efektif untuk kata sandi yang menggunakan karakter yang sangat bervariasi

<p align="right">[ <a href="https://github.com/fixploit03/jono-ng">Kembali ke Beranda</a> ]</p>
