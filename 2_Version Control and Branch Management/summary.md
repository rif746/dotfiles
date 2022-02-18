# Resume
Ringkasan untuk materi Version Control dan Branch Management (GIT).

### Inisialisasi Git
untuk memulai menggunakan git, perlu dilakukan inisialisasi menggunakan perintah.
```bash
$ git init
$ git remote set-url origin https://github.com/<user>/<repo>.git
```
atau jika repository sudah tersedia dapat melakukan kloning repository dengan perintah.
```bash
$ git clone https://github.com/<user>/<repo>.git
```

### Simpan Berkas
setelah kode dimodifikasi, tentunya harus disimpan. untuk menyimpannya dapat dilakukan dengan memindahkan berkas ke staging area dengan perintah.
```bash
$ git add . # untuk memasukkan semua berkas yang dimodifikasi ke staging area
$ git add path/to/file # untuk memasukkan berkas tertentu ke staging area
```
setelah berkas mask ke staging area, lakukan commit dengan perintah.
```bash
$ git commit -m "pesan commit"
```

### Push
setelah data dicommit, lakukan push untuk menyimpannya di git cloud storage anda. perintah yang dapat digunakan adalah.
```bash
$ git push origin
```
berdasarkan aturan github pada artikel [ini](https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/), untuk melakukan push membutuhkan Private Access Token (PAT). setelah mendapatkan PAT, dapat melakukan push menggunakan perintah.
```bash
$ git push https://<user>:<token>@github.com/<user>/<repo>.git
```
