# Prince Attack

Prince (PRobability INfinite Chained Elements) Attack adalah teknik password cracking yang menggunakan analisis probabilitas dan gabungan kata.

## Cara Kerja:

- Memecah kata-kata dari wordlist menjadi bagian-bagian (chunks)
- Menggabungkan chunk dengan berbagai kemungkinan
- Menggunakan probabilitas untuk menentukan kombinasi yang lebih mungkin digunakan

## Contoh:

- Dari wordlist dasar: "rock", "star", "123"
- Prince attack menghasilkan: "rock", "star", "123", "rockstar", "starrock", "rock123", "123rock", "star123", "123star", dll.

## Kelebihan:

- Lebih efisien dibanding dictionary attack biasa
- Menghasilkan lebih banyak kandidat kata sandi yang realistis
- Kombinasi cerdas dari kata-kata yang berkaitan

## Kekurangan:

- Masih terbatas pada kombinasi dari kata yang tersedia
- Dapat menghasilkan banyak kombinasi yang tidak masuk akal
- Membutuhkan wordlist awal yang baik
