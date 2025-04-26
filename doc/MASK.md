# Mask Attack

Mask attack adalah teknik yang menggunakan pola atau template untuk membatasi kemungkinan kombinasi dalam serangan brute force.

## Cara Kerja:

- Mendefinisikan pola/mask untuk karakter yang akan dicoba
- Menggunakan pengetahuan tentang format kata sandi yang mungkin digunakan
- Mencoba kombinasi hanya dalam batasan mask yang ditentukan

## Contoh:

- Mask "?u?l?l?l?d?d?d?d" mencari pola: 1 huruf besar, 3 huruf kecil, diikuti 4 angka
  - Contoh hasil: "Abcd1234", "Zxyw9876"
- Mask untuk format tanggal: "?d?d?d?d?d?d?d?d" (8 digit tanggal)
  - Contoh hasil: "19901225", "20000101"

## Kelebihan:

- Jauh lebih efisien daripada brute force penuh
- Sangat efektif jika format/pola kata sandi diketahui
- Mengurangi ruang pencarian secara signifikan

## Kekurangan:

- Membutuhkan pengetahuan atau dugaan tentang format kata sandi
- Tidak efektif jika pola yang digunakan salah
