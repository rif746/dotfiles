# Resume
Ringkasan untuk materi Clean Code.

### Clean Code
*Clean Code* adalah sebuah istilah untuk kode yang mudah dipahami, dibaca, dan diubah oleh *programmer*.

#### Karakteristik Clean Code
##### Mudah dipahami
Sebuah kode haruslah mudah dipahami, agar mempermudah orang lain untuk berkolaborasi. mulai dari penamaan variabel, fungsi, *class*, dan struktur lainnya harus jelas.
```go
func main() {
	b := 120.0
	data := []int{2, 3, 5, 7}
}
```
kode diatas merupakan contoh dari kode yang tidak mudah dipahami. disini tidak jelas variabel `b` digunakan untuk apa, variabel `data` digunakan untuk apa.
```go
func main() {
	userBalance := 120.0
	primeList := []int{2, 3, 5, 7}
}
```
kode diatas merupakan contoh dari kode yang mudah dipahami. penamaan variabel disini sudah jelas, misal `userBalance` digunakan sebagai wadah untuk saldo pengguna, variabel `primeList` digunakan untuk menyimpan daftar bilangan prima.

##### Mudah dieja dan dicari
penamaan variabel atau fungsi harus mudah dieja, agar mudah dicari dan diucapkan saat sedang diskusi tentang programnya.
```go
func main() {
	fName := "Syarif Ubaidillah"
}
```
kode diatas merupakan contoh dari kode yang sulit dieja dan dicari. karena singkatan dari variabel `fName` ini bisa jadi *fullName* atau *firstName*. jika ada yang perlu diubah nantinya, dapat terjadi kesalahan karena nama variabel yang sulit dieja.
```go
func main() {
	fullName := "Syarif Ubaidillah"
}
```
kode diatas merupakan contoh dari kode yang mudah dieja dan dicari. karena variabel `fullName` ini sudah jelas digunakan untuk menyimpan data nama lengkap.

##### Singkat namun mendeskripsikan konteks
penamaan variabel dan fungsi haruslah singkat namun jelas untuk apa.
```go
func inv(){}
func add(){}
```
dalam kode diatas, fugsi `inv()` tidak jelas akan digunakan untuk apa. dan fungsi `add()` juga tidak jelas akan digunakan untuk apa.
```go
func inviteUser(){}
func addUser(){}
```
dalam kode diatas, fugsi `inviteUser()` digunakan untuk mengundang pengguna. dan fungsi `addUser()` digunakan untuk menambah pengguna.

##### Konsisten
penamaan variabel dan fugsi harus konsisten. misal penamaan variabel dengan huruf kecil, semua harus huruf kecil.
```go
func add_user(){}
func inviteUser(){}
```
penamaan fungsi dalam kode diatas tidak konsisten. fungsi `add_user()` menggunakan huruf kecil dan underscore `_` untuk memisahkan 2 kata. sementara `inviteUser()` menggunakan huruf kecil dan kapital untuk memisahkan kata.
```fo
func addUser(){}
func inviteUser(){}
```
penamaan fungsi dalam kode diatas konsisten. fungsi `addUser()` dan `inviteUser()` sama sama menggunakan huruf kecil dan kapital untuk memisahkan kata.

##### Hindari Penambahan Konteks yang tidak Perlu
penambahan konteks yang tidak perlu membuat kode menjadi terlalu panjang.
```go
type Car struct {
	carName string
	carSerialNumber int
}
```
nama variabel `carName` dan `carSerialNumber`, konteks `car` ditambahkan disetiap nama variabel membuatnya terlalu panjang. karena sudah jelas bahwa `carName` dan `carSerialNumber` berada dalam sebuah struct `Car`
```go
type Car struct {
	name string
	serialNumber int
}
```
sebaiknya jika variabel berada didalam struct atau sesuatu yang lain yang menjelaskan kegunaannya, tidak perlu menambahkan konteks pada penamaannya. seperti kode diatas, variabel `name` dan `serialNumber` berada didalam struct `Car` yang menjelaskan bahwa variabel tersebut merupakan nama dan kode serial mobil.

##### Komentar
dalam sebuah kode dibutuhkan komentar untuk mendokumentasikan kode yang dibuat. tetapi tidak semua hal harus diberi komentar. terlalu banyak menulis komentar menyebabkan kode sulit untuk dibaca.
```go
// fungsi utama
func main() {
	// variabel untuk nama lengkap
	fullName := "Syarif Ubaidillah"
	// menjalankan fungsi halo dengan concurrent
	go halo()
}
```
kode diatas terlalu banyak komentar, membuatnya menjadi tidak nyaman untuk dibaca dan memperbesar ukuran berkasnya.
```go
func main() {
	fullName := "Syarif Ubaidillah"
	// menjalankan fungsi halo dengan concurrent
	go halo()
}
```
sebaiknya komentar ditulis jika dibutuhkan saja. karena tidak semua hal dalam kode membutuhkan komentar untuk dokumentasi.

##### Good Function
penulisan fungsi yang baik membuatnya mudah untuk orang lain membacanya. 
```go
var name string = "Syarif Ubaidillah"

func splitName() {
	splittedName := strings.Split(name, " ")
	return splittedName
}

func main() {
	fmt.Println("Nama Lengkap:", name)
	fmt.Println("Nama Slice:", splitName())
}
```
dalam kode diatas, fungsi `splitName()` memcah string global variabel `name` dengan spasi sebagai separator. hal ini tidak baik karena global variabel bisa diakses oleh semua fungsi.
```go
func splitName(name) {
	splittedName := strings.Split(name, " ")
	return splittedName
}

func main() {
	var name string = "Syarif Ubaidillah"
	fmt.Println("Nama Lengkap:", name)
	fmt.Println("Nama Slice:", splitName(name))
}
```
dari pada menggunakan akses global variabel, sebaiknya menggunakan parameter untuk melakukan modifikasi atau operasi lainnya didalam sebuah fungsi.

##### Gunakan Style Guide
*Style Guide* dapat membantu bagaimana penulisan kode yang baik dan mudah dibaca. terdapat berbagai macam *Style Guide* contohnya untuk Javascript dapat menggunakan [Airbnb Style Guide](https://github.com/airbnb/javascript), dan untuk Go sendiri ada [Uber Go](https://github.com/uber-go/guide).

##### Formatting
Saran *Formatting*.
- Lebar baris kode 80-120 karakter.
- Satu class 300-500 baris.
- Baris kode yang berhubungan saling berdekatan.
- Dekatkan fungsi dan pemanggilnya.
- Perhatikan indentasi.
- Menggunakan ***Prettier*** dan ***Formatter***.
