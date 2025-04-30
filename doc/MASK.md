# Mask Attack

Mask Attack adalah teknik serangan keamanan siber yang menggunakan [pola mask](https://hashcat.net/wiki/doku.php?id=mask_attack) untuk membatasi kemungkinan kombinasi dalam serangan Brute Force Attack. Teknik ini meningkatkan efisiensi dengan hanya mencoba kombinasi yang memenuhi pola mask spesifik yang diduga digunakan dalam kata sandi target.

## Cara Kerja:

- Mendefinisikan pola mask untuk karakter yang akan dicoba
- Menggunakan pengetahuan tentang format kata sandi yang mungkin digunakan
- Mencoba kombinasi hanya dalam batasan pola yang ditentukan

## Jenis-Jenis Pola Mask:

- **?l** untuk huruf kecil (`a-z`)
- **?u** untuk huruf besar (`A-Z`)
- **?d** untuk angka (`0-9`)
- **?s** untuk simbol (`!@#$%^&*()`, `dll`)
- **?a** untuk semua kombinasi (`huruf kecil`, `huruf besar`, `angka` dan `simbol`)

## Contoh:

- **Serangan pada Kata Sandi Korporat**:  
  Menggunakan pola mask `?u?l?l?l?d?d?d?d` yang mencari pola: `1 huruf besar`, `3 huruf kecil`, diikuti `4 angka`
  
  - Contoh hasil: `Abcd1234`, `Zxyw9876`, `Ptop2023`
- **Serangan pada Tanggal Lahir**:  
  Menggunakan pola mask `?d?d?d?d?d?d?d?d` untuk format `tanggal 8 digit`
  
  - Contoh hasil: `25121990`, `01012000`, `12112002`
- **Serangan pada Password Kustom**:  
  Menggunakan pola mask `?u?u?l?l?l?s?d?d` untuk mencari pola `2 huruf besar`, `3 huruf kecil`, `1 simbol`, `2 angka`
  
  - Contoh hasil: `ABcde#45`, `ZYxwv$78`

## Kelebihan:

- **Jauh Lebih Efisien**:  
  Mengurangi ruang pencarian secara signifikan dibandingkan Brute Force Attack penuh
- **Hemat Waktu**:  
  Memfokuskan upaya pada kombinasi yang lebih mungkin digunakan
- **Sumber Daya Optimal**:  
  Menggunakan daya komputasi secara lebih efisien

## Kekurangan:

- **Membutuhkan Pengetahuan Awal**:  
   Memerlukan informasi atau dugaan tentang format kata sandi
- **Tetap Membutuhkan Waktu**:  
   Untuk mask yang kompleks, masih bisa membutuhkan waktu lama
- **Tidak Efektif jika Pola Salah**:  
   Jika asumsi format kata sandi salah, serangan tidak akan berhasil

<p align="right">[ <a href="https://github.com/fixploit03/jono-ng">Kembali ke Beranda</a> ]</p>
