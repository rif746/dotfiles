# Resume
Ringkasan untuk materi Introduction NoSQL and MongoDB.

### NoSQL
NoSQL merupakan basis data model baru dengan konsep *scehemeless* dan tanpa relasi. NoSQL tidak menggunakan tabel seperti SQL, melainkan menggunakan dokumen yang berbentuk JSON atau XML.

#### Tipe / Kategori
##### Key / Value
Tipe yang paling simple dengan pasangan `key` dan `value`. setiap pengaksesan data menggunakan `key` yang unik.

##### Column - Family
Tipe penyimpanan data perkolom, sangat cocok untuk pencarian data yang kompleks.

##### Graph
Tipe yang memodelkan struktur relasi data. menggunakan konsep `nodes` yang merupakan entity yang memiliki label, dan `edges` yang merupakan garis penghubung antar `nodes`. ada juga `properties` yang berisi data pada `nodes` maupun `edges`.

##### Document - Based
Tipe yang menyimpan semua informasi dalam bentuk dokumen. menggunakan konsep `collections` yang berupa sekumpulan dokumen sejenis.

### MogoDB
#### Instalasi
- Cara instalasi di Arch Linux. pastikan telah menginstall AUR helper seperti `yay` atau `pacaur`. `yay -S mongodb`
- Aktifkan *service* dari mongodb. `systemctl start mongodb`
- Pastikan *server* telah aktif. `sudo netstat -plaNt --numeric-ports | grep 27017`
- Mulai dengan mongo client (CLI). `mongo`

#### Administrasi
- untuk mengetahui perintah apa saja yang tersedia pada mongo db, dapat menggunakan `help` didalam mongo cli client.
- untuk memperkuat keamanan dapat menggunakan *Access Control*. artikel terkait dapat dibaca [disini](https://docs.mongodb.com/manual/tutorial/enable-authentication/#create-the-user-administrator)
- untuk menambah keamanan dengan *username* dan *password*, dapat dilakukan dengan `db.createUser()` untuk membuat username dan password untuk mengakses data.
- login dengan *username* dan *password* dengan perintah `db.auth()`.

#### Collection
- membuat db dengan perintah `use <db_name>`.
- membuat collections dengan perintah `db.createCollections()`

#### Insert
```javascript
db.mycol.insert({firstName: "Syarif", lastName: "Ubaidillah", gender: "male"})
```
kode diatas merupakan cara untuk melakukan ***Single Insert*** dalam mongodb.
```javascript
db.mycol.insert([
	{firstName: "Syarif", lastName: "Ubaidillah", gender: "male"},
	{firstName: "Andy", lastName: "Yulianto", gender: "male"},
	{firstName: "Arif", lastName: "Ralistiya", gender: "male"},
])
```
kode diatas merupakan cara untuk melakukan ***Bulk Insert*** dalam mongodb.

#### Find
```javascript
db.mycol.find()
db.mycol.find.pretty()
// with param
db.mycol.find({firstName: "Syarif"})
// sorting
db.mycol.find().sort(-1) // ASC
db.mycol.find().sort(-1) // DESC
```
kode diatas merupakan cara untuk melakukan pencarian dalam mongodb.

#### Update
```javascript
db.mycol.update({firstName: "Syarif"}, {firstName: "Syarif", lastName: "Ubaidillah", gender: "m"})
```
kode diatas merupakan cara untuk melakukan ***update***, dimana data yang diubah adalah yang memiliki `firstName` 'Syarif'.
```javascript
db.mycol.update({firstName: "Syarif"}, {$set: {gender: "m" }})
```
kode diatas merupakan cara untuk melakukan ***update set***, dimana data yang diubah adalah yang memiliki `firstName` 'Syarif', dan data yang diubah hanya bagian `gender`.
```javascript
db.mycol.update({firstName: "Syarif"}, {$inc: { age: 1 }})
```
kode diatas merupakan cara untuk melakukan ***update increment***, dimana data yang diubah adalah yang memiliki `firstName` 'Syarif', dan data yang diubah hanya bagian `age` yang bertambah 1.
```javascript
db.mycol.update({firstName: "Syarif"}, {$unset: { age: "" }})
```
kode diatas merupakan cara untuk melakukan ***update unset***, dimana data yang diubah adalah yang memiliki `firstName` 'Syarif', dan data `age` di*unset* atau dihilangkan.
```javascript
db.mycol.update({firstName: "Syarif"}, {$rename: { gender: "sex" }})
```
kode diatas merupakan cara untuk melakukan ***update rename***, dimana data yang diubah adalah yang memiliki `firstName` 'Syarif', dan data `gender` berubah nama menjadi `sex`.


