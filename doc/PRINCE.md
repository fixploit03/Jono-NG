# Prince Attack

Prince Attack (Probability Infinite Chained Elements) adalah teknik serangan keamanan siber yang canggih yang menggunakan analisis probabilitas dan pembuatan kata baru berdasarkan gabungan elemen dari Wordlist yang sudah ada. Teknik ini dirancang untuk menciptakan kandidat kata sandi yang lebih kompleks namun tetap realistis untuk digunakan manusia.

## Cara Kerja:

- Memecah kata-kata dari wordlist menjadi bagian-bagian (chunks)
- Menggabungkan chunk dengan berbagai kemungkinan dan pola
- Menggunakan algoritma probabilitas untuk menentukan kombinasi yang lebih mungkin digunakan

## Contoh:

- Dari wordlist dasar: `rock`, `star`, `123`, `password`
- Prince attack menghasilkan kombinasi seperti:
  - **Penggabungan sederhana**: `rockstar`, `starrock`, `rock123`, `123rock`, `star123`, `123star`
  - **Penggabungan kompleks**: `rockstar123`, `passwordrock`, `star123rock`
  - **Dengan kapitalisasi**: `RockStar`, `PassWord123`
  - **Dengan substitusi**: `r0ck5tar`, `pa55w0rd`

## Kelebihan:

- **Efisiensi Tinggi**:  
   Lebih efisien dibanding Dictionary Attack biasa karena fokus pada kombinasi yang lebih mungkin
- **Kandidat Realistis**:  
  Menghasilkan lebih banyak kandidat kata sandi yang mendekati kebiasaan pembuatan kata sandi manusia
- **Kombinasi Cerdas**:  
   Menggabungkan kata-kata yang berkaitan dengan cara yang menyerupai pola pemilihan kata sandi pengguna

## Kekurangan:

- **Ketergantungan Input**:  
   Masih terbatas pada kombinasi dari kata yang tersedia dalam Wordlist awal
- **Noise Tinggi**:  
   Dapat menghasilkan banyak kombinasi yang tidak masuk akal atau tidak realistis
- **Kualitas Wordlist**:  
   Membutuhkan Wordlist awal yang baik dan komprehensif
  
<p align="right">[ <a href="https://github.com/fixploit03/jono-ng">Kembali ke Beranda</a> ]</p>
