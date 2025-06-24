#!/bin/bash
#-----------------------------------------------------
# Script installer Jono-NG
#
# Dibuat oleh Rofi (Fixploit03)
# Github: https://github.com/fixploit03/Jono-NG
#-----------------------------------------------------

# Variabel warna (OK)
i="\e[30m"     # Hitam
m="\e[1;31m"   # Merah
h="\e[1;32m"   # Hijau
b="\e[1;34m"   # Biru
p="\e[1;37m"   # Putih
r="\e[0m"      # Reset
ib=$'\e[1;34m' # Input Biru
ip=$'\e[1;37m' # Input Putih

# Tentang script (OK)
nama="Jono-NG"
github="https://github.com/fixploit03/Jono-NG"

# Fungsi untuk mengecek root (OK)
function cek_root(){
	if [[ $EUID -ne 0 ]]; then
		echo -e "${m}[-] ${p}Script ini harus dijalankan sebagai root.${r}"
		exit 1
	fi
}

# Fungsi untuk menampilkan banner (OK)
function banner(){
        clear
	echo ""
        echo -e "              ${i}@@@@@@@@@@@@@${r}                        "
        echo -e "           ${i}@@@@@@@@@@@@@@@@@@@@@${r}                    "
        echo -e "        ${i}@@@@@@@@@@@${h}========${r}${i}@@@@@@@@${r}                 "
        echo -e "      ${i}@@@@@@@@@@%${h}============${r}${i}@@@@@@@@${r}               "
        echo -e "    ${i}@@@@@@@@@@@${h}====${r}${i}@@@@@@@${h}*====${r}${i}@@@@@@@@${r}             "
        echo -e "   ${i}@@@@@@@@@@@@${h}===${r}${i}@@@@@@@@@@${h}===${r}${i}@@@@@@@@@${r}            "
        echo -e "  ${i}@@@@@@@@@@@@${h}====${r}${i}@@@@@@@@@@${h}===${r}${i}@@@@@@@@@@${r}           "
        echo -e " ${i}@@@@@@@@@@@@@${h}====${r}${i}@@@@@@@@@@@${h}==${r}${i}@@@@@@@@@@@${r}          "
        echo -e " ${i}@@@@@@@@@@@@@${h}====${r}${i}@@@@@@@@@@@@@@@@@@@@@@@@${r}          "
        echo -e "${i}@@@@@@@@@@@@@@${h}+==================+${r}${i}@@@@@@@@${r}          "
	echo -e "${i}@@@@@@@@@${h}===${r}${i}@@@@@${h}=================${r}${i}@@@@@@@@@      ${p}Selamat datang di menu instalasi ${nama}!${r}"
        echo -e "${i}@@@@@@@@@${h}=====${r}${i}@@@@@@${h}==============${r}${i}@@@@@@@@@      ${p}Github: ${github}${r}"
        echo -e "${i}@@@@@@@@@@@@${h}=====${r}${i}@@@@@@@@${h}=========${r}${i}@@@@@@@@@      ${b}---------------------------------------------${r}"
        echo -e " ${i}@@@@@@@@@@@@@${h}=====${r}${i}@@@@@@${h}=========${r}${i}@@@@@@@@${r}          "
        echo -e " ${i}@@@@@@@@@@@${h}=====${r}${i}@@@@@@@@${h}=========${r}${i}@@@@@@@@${r}          "
        echo -e "  ${i}@@@@@@@${h}=====${r}${i}@@@@@@@@@@@${h}=========${r}${i}@@@@@@@${r}           "
        echo -e "  ${i}@@@@@@@${h}==${r}${i}@@@@@@@@@@@@@@${h}========${r}${i}@@@@@@@@${r}           "
        echo -e "   ${i}@@@@@@@@@@@${h}====${r}${i}@@@@@${h}=========${r}${i}@@@@@@@@${r}            "
        echo -e "     ${i}@@@@@@@@@${h}=================${r}${i}@@@@@@@${r}              "
        echo -e "      ${i}@@@@@@@@@@${h}=============${r}${i}@@@@@@@@${r}               "
        echo -e "        ${i}@@@@@@@@@@@@@%%%@@@@@@@@@@@${r}                 "
        echo -e "           ${i}@@@@@@@@@@@@@@@@@@@@@${r}                    "
        echo -e "                ${i}@@@@@@@@@@@@${r}                        "
	echo ""
}

# Fungsi untuk mengonfirmasi proses instalasi (OK)
function konfirmasi(){
	while true; do
		read -r -p "${ib}[#] ${ip}Apakah Anda ingin menginstal ${nama} (${ib}iya/tidak${ip}): " nanya
		if [[ "${nanya}" == "iya" ]]; then
			:
			break
		elif [[ "${nanya}" == "tidak" ]]; then
			echo ""
			echo -e "${p}Bya... ${m};)${r}"
			exit 0
		else
			echo -e "${m}[-] ${p}Masukkan tidak valid harap masukkan 'iya/tidak'.${r}"
			continue
		fi
	done
}

# Fungsi untuk mengecek koneksi internet
function cek_koneksi_internet(){
	echo -e "${b}[*] ${p}Mengecek koneksi internet...${r}"
	if ping -c 4 -W 2 google.com; then
		echo -e "${h}[+] ${p}Anda memiliki Koneksi internet.${r}"
	else
		echo -e "${m}[-] ${p}Anda tidak memiliki koneksi internet.${r}"
		exit 1
	fi
}

# Fungsi untuk menginstal dependensi yang dibutuhkan oleh Jono-NG (OK)
function instal_dependensi(){
	# Update repositori Linux
	echo -e "${b}[*] ${p}Memperbarui repositori Linux...${r}"
	if apt-get update -y; then
		echo -e "${h}[+] ${p}Berhasil memperbarui repositori Linux.${r}"
	else
		echo -e "${m}[-] ${p}Gagal memperbarui repositori Linux.${r}"
		exit 1
	fi

	daftar_dependensi=(
		"git"
		"python3"
		"perl"
		"build-essential"
		"libssl-dev"
		"zlib1g-dev"
		"yasm"
		"pkg-config"
		"libgmp-dev"
		"libpcap-dev"
		"libbz2-dev"
		"libcompress-raw-lzma-perl"
	)

	echo -e "${b}[*] ${p}Menginstal semua dependensi yang diperlukan oleh ${nama}...${r}"
	for dependensi in "${daftar_dependensi[@]}"; do
		echo -e "${b}[*] ${p}Menginstal ${dependensi}...${r}"
		if apt-get install "${dependensi}" -y; then
			echo -e "${h}[+] ${p}Berhasil menginstal ${dependensi}.${r}"
		else
			echo -e "${m}[-] ${p}Gagal menginstal ${dependensi}.${r}"
			exit 1
		fi
	done
	echo -e "${h}[+] ${p}Semua dependensi yang diperlukan oleh ${nama} berhasil diinstal.${r}"
}

# Fungsi untuk mengkloning repositori Jono-NG dari Github (OK)
function kloning_jono_ng(){
	# Pindah ke direktori /opt/
	cd "/opt" || exit 1

	echo -e "${b}[*] ${p}Menkloning repositori Jono-NG dari Github...${r}"
	if [[ -d "${nama}" ]]; then
		echo -e "${m}[-] ${p}Direktori ${nama} sudah ada.${r}"
		exit 1
	else
		if git clone "https://github.com/fixploit03/Jono-NG"; then
			echo -e "${h}[+] ${p}Berhasil mengkloning ${nama} dari Github.${r}"
			cd "${nama}" || exit 1
		else
			echo -e "${m}[-] ${p}Gagal mengkloning ${nama} dari Github.${r}"
			exit 1
		fi
	fi
}

# Fungsi untuk mengkloning repositori John the Ripper dari Github (OK)
function kloning_jtr(){
	echo -e "${b}[*] ${p}Menkloning repositori John the Ripper dari Github...${r}"
	if [[ -d "john" ]]; then
		echo -e "${m}[-] ${p}Direktori John the Ripper sudah ada.${r}"
		exit 1
	else
		if git clone "https://github.com/openwall/john.git" -b bleeding-jumbo john; then
			echo -e "${h}[+] ${p}Berhasil mengkloning John the Ripper dari Github.${r}"
			# Pindah ke direktori src John the Ripper
			cd john/src || exit 1
			# Konfigurasi John the Ripper
			echo -e "${b}[*] ${p}Mengonfigurasi John the Ripper sebelum proses kompilasi...${r}"
			if ./configure; then
				echo -e "${h}[+] ${p}Berhasil mengonfigurasi John the Ripper.${r}"
			else
				echo -e "${m}[-] ${p}Gagal mengonfigurasi John the Ripper.${r}"
				exit 1
			fi
			# Membersihkan file build sebelumnya
			echo -e "${b}[*] ${p}Membersihkan file build sebelumnya...${r}"
			if make -s clean; then
				echo -e "${h}[+] ${p}Berhasil membersihkan file build sebelumnya.${r}"
			else
				echo -e "${m}[-] ${p}Gagal membersihkan file build sebelumnya.${r}"
				exit 1
			fi
			# Mengompilasi John the Ripper
			echo -e "${b}[*] ${p}Mengompilasi John the Ripper...${r}"
			if make -sj"$(nproc)"; then
				echo -e  "${h}[+] ${p}Berhasil mengompilasi John the Ripper${r}"
			else
				echo -e "${m}[-] ${p}Gagal mengompilasi John the Ripper.${r}"
				exit 1
			fi
		else
			echo -e "${m}[-] ${p}Gagal mengkloning John the Ripper dari Github.${r}"
			exit 1
		fi
	fi
}

# Fungsi untuk menginstal Jono-NG (OK)
function instal_jono_ng(){
	# Pindah ke direktori src dari Jono-NG
	cd "../../src" || exit 1

	# Berikan izin eksekusi kepada script
	echo -e "${b}[*] ${p}Memberikan izin eksekusi kepada script...${r}"
	if chmod +x "jono-ng"; then
		echo -e "${h}[+] ${p}Berhasil memberikan izin eksekusi kepada script.${r}"
	else
		echo -e "${m}[-] ${p}Gagal memberikan izin eksekusi kepada script.${r}"
		exit 1
	fi

	# Salin script ke direktori /usr/local/bin/ agar bisa dijalankan dari mana saja
	echo -e "${b}[*] ${p}Menyalin script ke direktori /usr/local/bin/...${r}"
	if cp "jono-ng" "/usr/local/bin/"; then
		echo -e "${h}[+] ${p}Berhasil menyalin script ke direktori /usr/local/bin/.${r}"
	else
		echo -e "${m}[-] ${p}Gagal menyalin script ke direktori /usr/local/bin/.${r}"
		exit 1
	fi

	# Pindah ke direktori sebelumnya
	cd .. || exit 1

	# Menambahkan Desktop icon Jono-NG
	# echo -e "${b}[*] ${p}Menambahkan Desktop icon ${nama}...${r}"
	# if cp "${nama}.desktop" "/usr/share/applications/"; then
	#	echo -e "${h}[+] ${p}Berhasil menambahkan Desktop icon ${nama}.${r}"
	#	# Memperbarui database Desktop icon
	#	echo -e "${b}[*] ${p}Memperbarui database Desktop icon...${r}"
	#	if update-desktop-database; then
	#		echo -e "${h}[+] ${p}Berhasil memperbarui database Desktop icon.${r}"
	#	else
	#		echo -e "${m}[-] ${p}Gagal memperbarui database Desktop icon.${r}"
	#		exit 1
	#	fi
	# else
	#	echo -e "${m}[-] ${p}Gagal menambahkan Desktop icon ${nama}.${r}"
	#	exit 1
	# fi

	echo -e "${b}[*] ${p}Proses instalasi selesai.${r}"
	echo ""
	echo -e "${h}[+] ${p}${nama} berhasil diinstal.${r}"
	# echo -e "${h}[+] ${p}Untuk menjalankannya ketikkan: ${h}sudo jono-ng${r}"
        echo -e "${h}[+] ${p}Untuk menjalankannya ketikkan: ${h}jono-ng${r}"

	# Kelar dah
}

# Manggil semua fungsi (OK)
cek_root
banner
konfirmasi
cek_koneksi_internet
instal_dependensi
kloning_jono_ng
kloning_jtr
instal_jono_ng
