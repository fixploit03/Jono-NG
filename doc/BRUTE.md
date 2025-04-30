# Brute Force Attack

Brute Force Attack adalah teknik serangan keamanan siber di mana penyerang mencoba memecahkan kata sandi atau kunci enkripsi dengan mencoba semua kemungkinan kombinasi karakter secara sistematis hingga kombinasi yang benar ditemukan. Metode ini tidak mengandalkan kelemahan algoritma atau teknik pintas, melainkan pada kekuatan komputasi murni untuk mencoba setiap kemungkinan kombinasi.

## Cara Kerja:

- Mencoba setiap kombinasi karakter secara sistematis
- Dimulai dari kombinasi terpendek hingga yang lebih panjang
- Mencakup semua kemungkinan kombinasi dari set karakter yang digunakan

## Contoh:

- Serangan PIN ATM:
  Penyerang mencoba membobol PIN ATM 4 digit dengan mencoba semua kombinasi dari `0000`-`9999`. Jika PIN sebenarnya adalah `3721`, penyerang akan menemukannya setelah mencoba 3722 kombinasi.
- Serangan Login Web:
  Penyerang menggunakan script otomatis untuk mencoba masuk ke akun email dengan username target yang diketahui. Script ini mencoba kombinasi kata sandi mulai dari `a`, `b`, `c`, ... hingga kombinasi yang lebih kompleks seperti `aaa1`, `aaa2`, dan seterusnya.
- Enkripsi File ZIP:
  Penyerang mencoba membuka file ZIP terenkripsi dengan menggunakan program yang secara sistematis mencoba semua kombinasi. Jika password ZIP adalah `Pa55w0rd`, program akan mencoba semua kombinasi karakter hingga menemukan yang tepat.

## Kelebihan:

- **Jaminan Keberhasilan**: Jika diberi waktu cukup, pasti berhasil karena mencoba setiap kemungkinan.
- **Efektivitas pada Kata Sandi Lemah**: Sangat efektif untuk kata sandi pendek atau sederhana.
- **Tidak Memerlukan Kamus**: Tidak membutuhkan database kata atau frasa seperti Dictionary Attack.

## Kekurangan:

- **Membutuhkan Waktu Lama**: Sangat lambat untuk kata sandi yang kompleks dan panjang.
- **Konsumsi Sumber Daya Tinggi**: Membutuhkan daya komputasi yang besar.
- **Tidak Efisien**: Dibandingkan dengan teknik serangan lain seperti Dictionary Attack, Brute Force membutuhkan waktu jauh lebih lama untuk kata sandi yang kompleks.


<p align="right">[ <a href="https://github.com/fixploit03/jono-ng">Kembali ke Beranda</a> ]</p>
