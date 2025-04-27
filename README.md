# jono-ng 🎩

[![Platform](https://img.shields.io/badge/Platform-Linux-yellow?logo=linux)](https://www.linux.org/)
[![Bahasa](https://img.shields.io/badge/Bahasa-Bash-green?logo=gnu-bash)](https://www.gnu.org/software/bash/)
[![Ditenagai oleh](https://img.shields.io/badge/Ditenagai_oleh-John_the_Ripper-red?logo=lock)](https://github.com/openwall/john)
[![Lisensi](https://img.shields.io/badge/Lisensi-MIT-green?logo=open-source-initiative)](https://github.com/fixploit03/jono-ng/blob/main/LICENSE)

![](https://github.com/fixploit03/jono-ng/blob/main/img/john.jpg)

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

## Instal 🔧

Cara menginstal jono-ng dapat dilihat di sini: [https://github.com/fixploit03/jono-ng/blob/main/doc/INSTAL](https://github.com/fixploit03/jono-ng/blob/main/doc/INSTAL)

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
