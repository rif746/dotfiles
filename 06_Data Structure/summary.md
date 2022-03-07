# Resume
Ringkasan untuk materi Data Structure.

### Array
Array adalah struktur data yang menampung sekelompok elemen, yang berisi satu tipe data dengan alokasi ukuran tetap. untuk mendeklarasikan array dengan cara memberikan kurung kotak yang didalamnya berisi ukuran data yang dapat ditampung (`[5]`). 

contoh.
```go
func main() {
	var number [5]int
}
```
dari kode diatas, variabel `number` merupakan array dengan panjang datanya adalah 5 dan bertipe data integer.

untuk memberikan dan mengakses nilai pada array dapat dilakukan dengan cara berikut.
```go
func main() {
	var number [5]int
	
	// memberikan nilai
	number[0] = 1
	number[1] = 2

	// mengakses nilai
	fmt.Println(number[0])
	fmt.Println(number[1])
}
```
dari kode diatas, untuk memberikan nilai pada array dibutuhkan kurung kotak yang berisikan panjang nilai `n`. seperti `number[0] = 1`, yang berarti memberikan nilai `1` pada array `number` pertama. sedangkan untuk mengakses juga sama seperti memberikan nilai, seperti `fmt.Println(number[0])` yang berarti mencetak nilai array pertama dari variabel `number`. 

### Slice
Slice sama seperti Array, hanya saja jumlah data yang tersimpan dinamis. untuk mendeklarasikan slice dengan cara memberikan kurung kotak (`[]`) saja tanpa ada isi apapun.

contoh.
```go
func main() {
	var number []int
}
```
dari kode diatas, variabel number merupakan slice bertipe data integer dengan panjang data yang tak ditentukan.

untuk memberikan dan mengakses nilai pada array dapat dilakukan dengan cara berikut.
```go
func main() {
	var number []int
	
	// memberikan nilai
	number = append(number, 1)
	number = append(number, 2)

	// mengakses nilai
	fmt.Println(number)
}
```
dari kode diatas, untuk memberikan nilai pada slice menggunakan fungsi `append()`. seperti `number = append(number, 1)`, yang berarti menambahkan nilai `1` pada slice `number`. sedangkan untuk mengakses slice langsung dengan memanggil variabel slice, seperti `fmt.Println(number)` yang berarti mencetak semua nilai slice dari variabel `number`. 

### Map
Map adalah struktur data yang menyimpan data dengan format `keys: values`, dimana setiap `keys` itu unik atau tidak ada yang sama.

contoh.
```go
func main() {
	var price map[string]int{}
}
```
dari kode diatas, variabel price dideklarasikan sebagai map yangan `keys` bertipe data string dan `values` bertipe data integer.

### Function
Function adalah sebagian kode yang dapat dipanggil menggunakan namanya. dengan function kita dapat membuat `clean code` agar struktur kode mudah dibaca.

contoh.
```go
func sum(x, y int) int {
	return x + y
}
```
dari kode diatas, function `sum` memiliki parameter `x` dan `y` yang bertipe data integer, dan memiliki nilai kembali yang merupakan hasil dari operasi `x + y` yang juga bertipe data integer.
