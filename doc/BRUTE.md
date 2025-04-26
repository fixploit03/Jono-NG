# Brute Force Attack

Brute Force Attack adalah teknik serangan dimana penyerang mencoba semua kombinasi karakter yang mungkin untuk memecahkan kata sandi.

## Cara Kerja:

- Mencoba setiap kombinasi karakter secara sistematis
- Dimulai dari kombinasi terpendek hingga yang lebih panjang
- Mencakup semua kemungkinan kombinasi dari set karakter yang digunakan

## Contoh:

Jika kata sandi 4 digit numerik, algoritma mencoba: `0000`, `0001`, `0002`, ..., `9999`  
Untuk kata sandi alfanumerik 3 karakter: `aaa`, `aab`, `aac`, ..., `ZZZ`, `000`, `001`, ..., `999`

## Kelebihan:

- Dijamin berhasil jika diberi waktu cukup
- Efektif untuk kata sandi pendek dan sederhana

## Kekurangan:

- Sangat memakan waktu untuk kata sandi panjang dan kompleks
- Membutuhkan banyak sumber daya komputasi
- Perlu waktu eksponensial seiring bertambahnya panjang kata sandi

<p align="right">[ <a href="https://github.com/fixploit03/jono-ng">Kembali ke Beranda</a> ]</p>
