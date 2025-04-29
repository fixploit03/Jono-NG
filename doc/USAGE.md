## Cara Menggunakan

Berikut ini adalah tutorial tentang cara menggunakan Jono-NG:

1. **Menjalankan Script**
   ```
   sudo jono-ng
   ```

2. **Disclaimer**  
   Saat pertama kali dijalankan, script akan menampilkan disclaimer yang menyatakan bahwa script ini dibuat hanya untuk tujuan edukasi dan pembelajaran. Anda perlu mengetik `iya` untuk melanjutkan.

3. **Pemeriksaan Tools**  
   Script akan memeriksa apakah semua alat yang dibutuhkan sudah terinstal:

   - python3
   - perl
   - john
   - zip2john
   - rar2john
   - 7z2john
   - pdf2john
   - office2john
  
4. **Menu Utama**  
   Setelah verifikasi selesai, Anda akan melihat menu utama dengan pilihan:

   - [0] Keluar
   - [1] Crack kata sandi file ZIP
   - [2] Crack kata sandi file RAR
   - [3] Crack kata sandi file 7z
   - [4] Crack kata sandi file PDF
   - [5] Crack kata sandi file Office (`.docx`, `.xlsx`, `.pptx`)
   - [6] Tentang
  
5. **Melakukan Crack Kata Sandi File**  
   Pilih jenis file yang ingin di-crack (`1-5`), kemudian ikuti langkah-langkah:

   a. **Masukkan nama file**
      Masukkan nama file dengan ekstensi yang sesuai. File bisa berada di direktori manapun - cukup berikan path lengkap atau relatif jika tidak berada di direktori saat ini.

   b. **Script akan mengekstrak hash dari file**  
      Script akan memeriksa kevalidan file dan memastikan file terenkripsi.

   c. **Pilih teknik cracking**  
      Script menawarkan 5 teknik:

      - [1] [Dictionary Attack](https://github.com/fixploit03/Jono-NG/blob/main/doc/DICT.md) - menggunakan wordlist
      - [2] [Brute Force Attack](https://github.com/fixploit03/Jono-NG/blob/main/doc/BRUTE.md) - mencoba semua kombinasi karakter
      - [3] [Mask Attack](https://github.com/fixploit03/Jono-NG/blob/main/doc/MASK.md) - menggunakan pola tertentu
      - [4] [Prince Attack](https://github.com/fixploit03/Jono-NG/blob/main/doc/PRINCE.md) - metode berbasis wordlist dengan kombinasi kata
      - [5] [Subsets Attack](https://github.com/fixploit03/Jono-NG/blob/main/doc/SUBSETS.md) - mencoba subset dari karakter tertentu
  
   d. **Konfigurasi teknik yang dipilih**  
      Tergantung teknik yang dipilih, Anda perlu memberikan informasi tambahan:

      - Dictionary Attack: path ke file wordlist
      - Brute Force Attack: panjang minimal dan maksimal kata sandi
      - Mask Attack: pola mask seperti ?l?u?d?s?a (`huruf kecil`, `huruf besar`, `angka`, `simbol`, `semua kombinasi`)
      - Prince Attack: path ke file wordlist
      - Subsets Attack: panjang minimal dan maksimal kata sandi, kombinasi karakter

   e. **Proses cracking dimulai**  
      John the Ripper akan mulai bekerja dengan konfigurasi yang dipilih. Script menampilkan progress dan hasil.

   f. **Hasil cracking**
      - Jika berhasil: kata sandi akan ditampilkan dan disimpan di file `/opt/Jono-NG/cracked.csv`
      - Jika gagal: pesan akan ditampilkan bahwa kata sandi tidak ditemukan
  
6. **Menu Tentang**  
   Pilihan `[6]` menampilkan informasi tentang Jono-NG termasuk deskripsi dan pembuat script.

Itu dia tutorial tentang cara menggunakan Jono-NG

<p align="right">[ <a href="https://github.com/fixploit03/jono-ng">Kembali ke Beranda</a> ]</p>
