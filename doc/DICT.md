# Dictionary Attack

Dictionary Attack adalah teknik serangan keamanan siber di mana penyerang mencoba memecahkan kata sandi dengan menggunakan daftar kata (kamus) atau yang sering disebut [Wordlist](https://en.wikipedia.org/wiki/Word_list)  yang berisi `kata-kata umum`, `frasa populer`, dan `kombinasi karakter yang sering digunakan sebagai kata sandi`. Tidak seperti Brute Force Attack yang mencoba semua kombinasi, Dictionary Attack fokus pada kemungkinan kata sandi yang lebih mungkin digunakan.

## Cara Kerja:

- Menggunakan daftar kata sandi yang sudah dikompilasi (Wordlist)
- Mencoba setiap kata dalam daftar sebagai kata sandi potensial
- Sering dilengkapi dengan aturan modifikasi kata sandi umum

## Contoh:

- **Serangan Login Email**:  
  Penyerang menggunakan daftar kata umum seperti `password`, `123456`, `qwerty`, kemudian mencobanya pada halaman login email target. Jika password target adalah `sunshine`, dan kata ini ada dalam Wordlist, serangan akan berhasil.
- **Cracking Hash Password**:  
  Penyerang memiliki [hash password](https://en.wikipedia.org/wiki/Cryptographic_hash_function) dari database yang bocor. Dengan menggunakan tool seperti [Hashcat](https://en.wikipedia.org/wiki/Hashcat), mereka menjalankan Dictionary Attack dengan Wordlist [RockYou](https://en.wikipedia.org/wiki/RockYou) untuk menemukan kata yang menghasilkan hash yang sama.
- **Serangan Wi-Fi WPA/WPA2**:  
  Penyerang menangkap [handshake](https://en.wikipedia.org/wiki/Handshake_(computing)) Wi-Fi dan menjalankan Dictionary Attack dengan tool seperti [Aircrack-ng](https://en.wikipedia.org/wiki/Aircrack-ng), mencoba semua kata dalam file Wordlist hingga menemukan passphrase (`kata sandi`) yang benar.

## Kelebihan:

- **Jauh Lebih Efisien**:  
  Lebih cepat daripada Brute Force Attack karena hanya mencoba kata-kata yang mungkin digunakan.
- **Sangat Efektif**:  
  Banyak pengguna masih menggunakan kata-kata umum atau modifikasi simpel sebagai kata sandi.
- **Konsumsi Sumber Daya Lebih Rendah**:  
  Membutuhkan daya komputasi lebih kecil dibanding Brute Force Attack.
- **Dapat Ditingkatkan**:  
  Wordlist dapat dipersonalisasi dengan informasi spesifik tentang target (`nama hewan peliharaan`, `tanggal lahir`, `dll`).
- **Fleksibilitas**:  
  Dapat dikombinasikan dengan aturan modifikasi (`mengganti huruf dengan angka`, `menambahkan tahun`, `dll`).

## Kekurangan:

- **Keterbatasan Daftar**:  
  Hanya efektif jika kata sandi target ada dalam Wordlist.
- **Tidak Menjamin Keberhasilan**:  
  Tidak seperti Brute Force Attack, tidak menjamin akan menemukan kata sandi.
- **Membutuhkan Wordlist Berkualitas**:  
  Efektivitas sangat bergantung pada kualitas dan kelengkapan Wordlist yang digunakan.
- **Tetap Dapat Dideteksi**:  
  Upaya login berulang masih dapat memicu sistem deteksi serangan.
- **Tidak Efektif untuk Kata Sandi Acak**:  
  Tidak berguna melawan kata sandi yang benar-benar acak dan kompleks.

<p align="right">[ <a href="https://github.com/fixploit03/jono-ng">Kembali ke Beranda</a> ]</p>
