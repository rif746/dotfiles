# Introduction to Algorithm and Golang
materi ketiga adalah pengenalan algoritma dasar, dimana kita belajar penggunaan flowchart.

## Hasil Praktikum

### Flowchart Bilangan Prima
![bilangan prima](screenshots/bilangan-prima.png)

flowchart untuk proses algoritma bilangan prima. pertama masukkan `input(n)`, lalu diikuti dengan pengecekan apakan nilai `n` lebih besar dari 1. jika `n > 1` maka akan melanjutkan ke proses selanjutnya yaitu perulangan, jika `n <= 1` maka langsung akan memberikan output `n bukanlah bilangan prima`. dalam proses perulangan `i` dimana `i = 2` yang diulang hingga `n` kali, dilakukan pengecekan apakah `n` dapat dibagi dengan setiap nilai `i`, jika benar maka akan memberikan output `n bukanlah bilangan prima`. jika dalam perulangan tidak menemukan nilai yang dapat membagi nilai `n` maka akan keluar output `n adalah bilangan prima`.

### Flowchart Lampu  dan Tombol
![lampu dan tombol](screenshots/lampu-dan-tombol.png)

flowchart untuk proses algoritma lampu dan tombol. pertama masukkan `input(n)`, lalu inisialisasi `state = false`. setelah itu, masuk ke perulangan `i = 1` hingga `n` kali. didalam perulangan dilakukan pengecekan apakah nilai `n` habis dibagi nilai `i`, jika benar maka `state` akan berubah menjadi kebalikan dari dari nilainya saat ini. misal nilai awal `state = false`, jika nilai `n` habis dibagi nilai `i` akan berubah menjadi `state = true`. setelah selesai melakukan perulangan, akan dilakukan pengecekan pada nilai `state`. jika `state = true` maka akan menampilkan output `lampu menyala`, jika `state = false` akan menampilkan output `lampu tidak menyala`.

### Install Golang
![golang install](screenshots/golang-install.png)

untuk instalasi golang pada archlinux, cukup dengan perintah `sudo pacman -S go`.

### Hello World ([kode](./praktikum/main.go))
![hello world](screenshots/golang-rbi.png)
