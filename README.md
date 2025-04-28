<div></div>

<h1 align="center">
  <img src="https://github.com/fixploit03/jono-ng/blob/main/img/icon.png" width=175 height=175/><br>
Jono-NG</h1>

<p align="center">
  <span>Crack Kata Sandi File Terenkripsi dengan <a href="https://github.com/openwall/john">John the Ripper</a></span>
</p>

<p align="center">
  <a href="https://github.com/fixploit03/jono-ng/blob/main/doc/INSTAL">Instalasi</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://youtu.be/r-zpLuvNEks?si=16H5IQCfyN8FLNAP">Demonstrasi</a>
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

`Jono-NG` adalah script Bash open-source yang dirancang untuk mempermudah penggunaan John the Ripper (`JtR`) dalam cracking kata sandi file terenkripsi seperti `ZIP`, `RAR`, `7z`, `PDF`, dan `dokumen Microsoft Office` (`.docx`, `.xlsx`, `.pptx`).

> ⚠️ **DISCLAIMER**: Script ini hanya untuk tujuan edukasi. Penggunaan untuk aktivitas ilegal atau tanpa izin adalah melanggar hukum. Pembuat tidak bertanggung jawab atas penyalahgunaan script ini. Gunakan dengan bijak dan hanya pada file yang Anda miliki.

## Fitur ✨

- **Antarmuka Pengguna yang Ramah**:  Script ini menyediakan menu berbasis CLI (Command Line Interface) yang mudah digunakan dengan tampilan berwarna dan petunjuk yang jelas.
- **Dukungan Berbagai Format File Terenkripsi**:
  - File ZIP (`.zip`)
  - File RAR (`.rar`)
  - File 7z (`.7z`)
  - Dokumen PDF (`.pdf`)
  - Dokumen Microsoft Office (`.docx`, `.xlsx`, `.pptx`)
- **Beragam Teknik Cracking Kata Sandi**:  
  - [Dictionary Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/DICT.md)
  - [Brute Force Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/BRUTE.md)
  - [Mask Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/MASK.md)
  - [Prince Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/PRINCE.md)
  - [Subsets Attack](https://github.com/fixploit03/jono-ng/blob/main/doc/SUBSETS.md)
- **Penanganan Kesalahan**:  
  Memberikan pesan kesalahan yang informatif ketika terjadi masalah. tidak terenkripsi.
- **Dapat Disesuaikan**:  
   Memungkinkan pengguna untuk menentukan `wordlist`, `panjang kata sandi`, `pola mask`, dan `set karakter`.
- **Penyimpanan Hasil**:  
  Menyimpan informasi file yang berhasil di-crack dalam format CSV.

## Persyaratan 📝

Untuk menjalankan Jono-NG ada beberapa persyaratan yang harus dipenuhi diantaranya:

- Sistem operasi berbasis Linux (seperti [Ubuntu](https://ubuntu.com/), [Debian](https://www.debian.org/), atau [Kali Linux](https://www.kali.org/).
- [Bash](https://www.gnu.org/software/bash/)
- [Python 3](https://www.python.org/)
- [Perl](https://www.perl.org/)
- [John the Ripper suite](https://github.com/openwall/john), termasuk:
  - john
  - zip2john
  - rar2john
  - 7z2john.pl
  - pdf2john.pl
  - office2john.py

Opsional

- **File wordlist** (misalnya, `rockyou.txt`) untuk serangan `Dictionary Attack` dan `Prince Attack`.

> Kalau ingin mengunduh wordlist rockyou.txt, linknya ada di sini: [https://github.com/praetorian-inc/Hob0Rules/raw/refs/heads/master/wordlists/rockyou.txt.gz](https://github.com/praetorian-inc/Hob0Rules/raw/refs/heads/master/wordlists/rockyou.txt.gz)

## Instal 🔧

Cara menginstal Jono-NG dapat dilihat di sini: [https://github.com/fixploit03/jono-ng/blob/main/doc/INSTAL](https://github.com/fixploit03/jono-ng/blob/main/doc/INSTAL)

## Demonstrasi 🎥

Video demonstrasi Jono-NG dapat dilihat di YouTube melalui link berikut: [https://youtu.be/r-zpLuvNEks?si=16H5IQCfyN8FLNAP](https://youtu.be/r-zpLuvNEks?si=16H5IQCfyN8FLNAP)

## Lisensi 📜

**Hak Cipta © 2025 Rofi (Fixploit03)**

Script ini dilisensikan secara gratis. Anda diizinkan untuk menggunakan, menyalin, memodifikasi, menggabungkan, menerbitkan, mendistribusikan, melisensikan ulang, dan/atau menjual salinan script ini, dengan syarat:

Pemberitahuan hak cipta dan lisensi ini disertakan dalam semua salinan atau bagian substansial dari script.

Script diberikan "**sebagaimana adanya**", tanpa jaminan apa pun, termasuk jaminan kelayakan untuk diperjualbelikan, kesesuaian untuk tujuan tertentu, atau bebas dari pelanggaran.

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
- **Pengguna**: Untuk mencoba dan memberikan masukan pada Jono-NG.

> **Catatan**: Script ini adalah proyek edukasi. Hargai privasi dan hak orang lain. Mari bersama-sama membangun komunitas keamanan siber yang bertanggung jawab!
