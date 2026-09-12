# 📑 Manual Book: Panduan Git Kelompok 5 (Mata Kuliah RPL)

Halo! Panduan ini dibuat khusus untuk anggota Kelompok 5 agar proses pengerjaan project **Rekayasa Perangkat Lunak (RPL)** berjalan lancar dan seragam. 

⚠️ **PENTING UNTUK DIINGAT:**
* **Nama Remote resmi kita:** `kampus` (bukan *origin*)
* **Nama Branch utama kita:** `production` (bukan *main* atau *master*)

Silakan ikuti langkah-langkah di bawah ini secara berurutan.

---

## 🚀 Langkah 1: Persiapan Awal (Hanya Dilakukan 1 Kali di Awal)

Sebelum mulai mengisi atau mengubah kode, kamu harus mengunduh project dan mendaftarkan identitasmu di terminal (Termux/CMD/Git Bash).

### 1. Download Project ke Perangkat Kamu
Buka terminal kamu, lalu jalankan perintah ini untuk mendownload (clone) folder project dari GitHub ke HP atau laptopmu:
```bash
git clone https://github.com
```

### 2. Masuk ke Folder Project
Setelah selesai download, kamu harus masuk ke dalam folder project-nya terlebih dahulu:
```bash
cd RPL-Project-Kelompok-5
```

### 3. Atur Identitas Kamu (Wajib!)
Langkah ini sangat penting agar setiap kode yang kamu ubah tercatat atas namamu (bukan anonim). Jalankan perintah berikut dan **ganti teks di dalam tanda kutip** dengan data aslimu:
```bash
# Mengatur nama dan NPM kamu
git config --local user.name "Nama Kamu (NPM Kamu)"

# Mengatur email yang kamu pakai di akun GitHub
git config --local user.email "email-github-kamu@gmail.com"
```

### 4. Hubungkan ke Remote "kampus"
Kita menggunakan nama remote khusus yaitu `kampus`. Jalankan perintah ini untuk memastikan perangkatmu terhubung ke server GitHub kita dengan benar:
```bash
# 1. Menambahkan link GitHub project dengan nama alias "kampus"
git remote add kampus https://github.com

# 2. Mengecek apakah nama remote "kampus" sudah terpasang dengan benar
git remote -v
```

### 5. Masuk ke Cabang Utama (production)
Ingat, cabang kerja utama kelompok kita adalah `production`. Pastikan kamu berada di cabang yang benar dengan perintah ini:
```bash
# 1. Pindah ke cabang utama production
git checkout production

# 2. Mengecek posisi cabang kamu saat ini (pastikan ada tanda * di kata production)
git branch
```

---

## 🔄 Langkah 2: Alur Kerja Harian (Setiap Kali Mau Coding)

Setiap kali kamu ingin mulai menulis atau mengubah kode baru, **JANGAN langsung coding**. Kamu wajib mengambil kode terbaru yang mungkin sudah di-update oleh teman kelompokmu yang lain agar tidak terjadi bentrok (*conflict*).

Jalankan perintah ini untuk mengambil data terbaru dari remote **kampus** ke branch **production**:
```bash
git pull kampus production
```

---

## 📤 Langkah 3: Mengirim Hasil Kerja ke GitHub

Jika kamu sudah selesai membuat fitur, memperbaiki eror, atau mengubah file di dalam project, saatnya mengirimkan hasil kerjamu ke GitHub kelompok.

Jalankan 3 perintah ini secara berurutan:

### 1. Tandai File yang Berubah
Perintah ini berfungsi untuk membungkus semua file yang baru saja kamu buat atau edit:
```bash
git add .
```

### 2. Beri Catatan Perubahan (Commit)
Berikan catatan singkat tentang apa yang sudah kamu kerjakan agar teman kelompokmu paham. Ganti teks di dalam tanda kutip sesuai kerjaanmu:
```bash
git commit -m "fitur: tambah halaman struktur data"
```

### 3. Kirim ke GitHub (Push)
Terakhir, kirim bungkusan kode kamu ke server GitHub melalui remote **kampus** menuju branch **production**:
```bash
git push kampus production
```

---

## 📌 Ringkasan Alur Singkat (Cepat)
Jika kamu sudah melewati **Langkah 1**, maka setiap hari kamu hanya perlu mengulang alur simpel ini:
1. `git pull kampus production` (Ambil kode terbaru dari remote kampus)
2. *... Mulai edit kode / coding ...*
3. `git add .` (Tandai file)
4. `git commit -m "pesan"` (Beri catatan)
5. `git push kampus production` (Kirim ke remote kampus branch production)

Selamat mengerjakan project kelompok! 🚀

