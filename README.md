<div></div>

<h1 align="center">
  <img src="https://github.com/fixploit03/jono-ng/blob/main/img/icon%20jono-ng.png" width=175 height=175/><br>
jono-ng</h1>

<p align="center">
  <span>Crack Kata Sandi File Terenkripsi dengan <a href="https://github.com/openwall/john">John the Ripper</a></span>
</p>

<p align="center">
  <a href="https://github.com/fixploit03/jono-ng/blob/main/doc/INSTAL">Instalasi</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="">Demonstrasi</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/fixploit03/jono-ng/blob/main/LICENSE">Lisensi</a>
</p>

<div align="center">
    <img src="https://img.shields.io/badge/Platform-Linux-yellow?logo=linux&style=flat-square" alt="Platform">
    <img src="https://img.shields.io/badge/Bahasa-Bash-green?logo=gnu-bash&style=flat-square" alt="Bahasa">  
    <img src="https://img.shields.io/badge/Lisensi-MIT-green?logo=open-source-initiative&style=flat-square" alt="Lisensi">
    <br>
    <img src="https://img.shields.io/badge/Ditenagai_oleh-John_the_Ripper-red?logo=lock&style=flat-square" alt="Ditenagai oleh">
</div>
<br>

![](https://github.com/fixploit03/jono-ng/blob/main/img/Screenshot%20jono-ng.png)

**`jono-ng` adalah script Bash open-source yang dirancang untuk mempermudah penggunaan John the Ripper (`JtR`) dalam cracking kata sandi file terenkripsi seperti `ZIP`, `RAR`, `7z`, `PDF`, dan `dokumen Microsoft Office` (`.docx`, `.xlsx`, `.pptx`).** script ini menyediakan antarmuka berbasis teks yang interaktif dan ramah pengguna, mengotomatiskan proses ekstraksi hash dan cracking dengan berbagai teknik seperti `Dictionary Attack`, `Brute Force`, `Mask Attack`, `Prince Attack`, dan `Subsets Attack`. Dibuat untuk tujuan edukasi dan pembelajaran keamanan siber, script ini menekankan penggunaan yang etis, legal, dan bertanggung jawab, hanya pada file yang dimiliki pengguna.

> ⚠️ **DISCLAIMER**: Script ini hanya untuk tujuan edukasi. Penggunaan untuk aktivitas ilegal atau tanpa izin adalah melanggar hukum. Pembuat tidak bertanggung jawab atas penyalahgunaan script ini. Gunakan dengan bijak dan hanya pada file yang Anda miliki.

## Fitur ✨

- **Antarmuka Interaktif**:  
  Menu berbasis teks dengan banner ASCII art untuk setiap jenis file, memudahkan navigasi.
- **Dukungan Beragam File**:  
  Mendukung cracking kata sandi untuk file `ZIP`, `RAR`, `7z`, `PDF`, dan `dokumen Office` (`.docx`, `.xlsx`, `.pptx`).
- **Berbagai Teknik Cracking**:  
  - [Dictionary Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/DICT.md) (`menggunakan wordlist`).
  - [Brute Force Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/BRUTE.md) (`mencoba semua kombinasi karakter`).
  - [Mask Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/MASK.md) (`menggunakan pola mask seperti huruf`, `angka`, atau `simbol`).
  - [Prince Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/PRINCE.md) (`kombinasi kata dari wordlist`).
  - [Subsets Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/SUBSETS.md) (`kombinasi karakter tertentu`).
- **Validasi Input**:  
   Memeriksa keberadaan dan keabsahan file target serta wordlist.
- **Manajemen Proses**:  
  - Menampilkan waktu mulai dan selesai proses cracking.
  - Membersihkan file sementara (`hash`, `pot`) setelah selesai.
  - Penanganan error seperti file rusak atau tidak terenkripsi.
- **Warna Teks**:  
   Menggunakan kode ANSI untuk membedakan informasi, error, dan input pengguna.

## Persyaratan

### Persyaratan Sistem:

1. **Sistem Operasi Linux (`Debian`/`Ubuntu`)**
2. **Akses Root**: Script harus dijalankan dengan hak akses root

### Dependensi Perangkat Lunak:

1. **John the Ripper**: Alat utama pembobol kata sandi
2. **Python3**: Dibutuhkan untuk menjalankan script seperti `office2john.py`
3. **Perl**: Dibutuhkan untuk menjalankan script seperti `7z2john.pl` dan `pdf2john.pl`

### Komponen John the Ripper:

Script mengharapkan alat-alat John the Ripper berikut tersedia:

1. **john** - Pembobol kata sandi utama
2. **zip2john** - Untuk mengekstrak hash dari file ZIP
3. **rar2john** - Untuk mengekstrak hash dari file RAR
4. **7z2john.pl** - Untuk mengekstrak hash dari file 7z
5. **pdf2john.pl** - Untuk mengekstrak hash dari file PDF
6. **office2john.py** - Untuk mengekstrak hash dari file Office (`.docx`, `.xlsx`, `.pptx`)

## Instal 🔧

Cara menginstal jono-ng dapat dilihat di sini: [https://github.com/fixploit03/jono-ng/blob/main/doc/INSTAL](https://github.com/fixploit03/jono-ng/blob/main/doc/INSTAL)

## Screenshot 📸



## Lisensi 📜

**Hak Cipta © 2025 Rofi (Fixploit03)**

Script ini dilisensikan secara gratis. Anda diizinkan untuk menggunakan, menyalin, memodifikasi, menggabungkan, menerbitkan, mendistribusikan, melisensikan ulang, dan/atau menjual salinan script ini, dengan syarat:

Pemberitahuan hak cipta dan lisensi ini disertakan dalam semua salinan atau bagian substansial dari script.

Script diberikan "sebagaimana adanya", tanpa jaminan apa pun, termasuk jaminan kelayakan untuk diperjualbelikan, kesesuaian untuk tujuan tertentu, atau bebas dari pelanggaran.

Lihat [LICENSE](https://github.com/fixploit03/jono-ng/blob/main/LICENSE) untuk detail lengkap.

## Kontak 👤

Untuk pertanyaan, saran, atau laporan bug:

- **Pembuat**: Rofi (Fixploit03)
- **GitHub**: fixploit03
- **Email**: fixploit03@gmail.com

Silakan buka [Issue](https://github.com/fixploit03/jono-ng/issues) untuk melaporkan masalah atau mengusulkan fitur baru.

## Ucapan Terima Kasih 🙏🏻

- **John the Ripper Team**: Untuk alat cracking kata sandi yang luar biasa.
- **Komunitas Open-Source**: Untuk inspirasi dan dukungan.
- **Pengguna**: Untuk mencoba dan memberikan masukan pada jono-ng.

> **Catatan**: Script ini adalah proyek edukasi. Hargai privasi dan hak orang lain. Mari bersama-sama membangun komunitas keamanan siber yang bertanggung jawab!
