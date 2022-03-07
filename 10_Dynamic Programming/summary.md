# Resume
Ringkasan untuk materi Dynamic Programming.

### Dynamic Programming
Dynamic Programming adalah suatu algoritma yang digunakan untuk masalah optimasi dengan memecahkannya menjadi masalah sederhana agar mudah dikerjakan, dan tetap mencari solusi optimal untuk menyelesaikan seluruh masalah.

### Characteristic of Dynamic Programming
#### Overlapping Subproblems
submasalah adalah versi sederhana dari masalah utama. overlapping subproblem merupakan submasalah yang dipanggil berulang kali untuk menemukan solusi. contohnya dalam program adalah metode rekursif. dimana untuk menyelesaikan masalah, fungsi rekursif memanggil dirinya berulang kali hingga suatu kondisi terpenuhi.

#### Optimal Substructure Property
beberapa masalah memiliki optimal subsctructure property jika seluruh solisu optimalnya disatukan dari solusi optimal setiap submasalah yang dimiliki. contohnya pada perhitungan fibonacci, dimana `fib(n) = fib(n-1)+fib(n-2)`. masalah dari ukuran `n` telah diperkecil dengan submasalah ukuran `n-1` dan `n-2`. oleh karena itu, fibonacci memiliki optimal subsctructure property.

### Dynamic Programming Method
#### Top-down with Memorization
dengan pendekatan ini, kita mencoba menyelesaikan masalah dengan metode rekursif ke submasalah terkecil. ketika kita menyelesaikan submasalah, kita membuat hasil penyelesaiannya menjadi `cache` agar kita tidak perlu menyelesaikannya lagi saat fungsinya dipanggil berulang kali. lalu mengembalikan hasil yang tersimpan dalam `cache`. teknik menyimpan hasil dari penyelesaian submasalah kedalam `cache` ini dinamakan Memorization.

#### Bottom-up with Tabulation
Tabulation adalah kebalikan dari pendekatan top-down dan menghindari fungsi rekursif. dengan pendekatan ini, kita menyelesaikan masalah dengan `bottom-up`. contoh dengan menyelesaikan semua submasalah terkait. metode ini menggunakan tabel `n-dimensional`. berdasarkan hasil dari tabel, solusi untuk masalah utama dapat ditemukan.


