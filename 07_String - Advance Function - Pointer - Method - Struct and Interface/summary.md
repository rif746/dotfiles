# Resume
Ringkasan untuk materi String, Advance Function, Pointer, Method, Struct and Interface.

### String
Dalam setiap bahasa pemrograman pasti ada tipe data string yang digunakan untuk menyimpan data teks. tidak terkecuali dalam bahasa go. untuk bekerja dengan string di golang dibutuhkan mengimport paket yang bernama `strings`.
```go
import "strings"
// or
import (
			"fmt"
			"strings"
		)
```

##### String Len
fungsi `len()` digunakan untuk mengetahui jumlah karakter yang ada pada string. contoh.
```go
str := "hello"
lenStr := len(str)
fmt.Println(lenStr)
```
dalam kode diatas, variabel `str` berisi teks `"hello"`, dan variabel `lenStr` berisi `integer` dengan nilai pangjang dari teks variabel `str`. lalu nilai panjang string dicetak dalam perintah `fmt.Println(lenStr)`.

##### String Compare
untuk melakukan komparasi pada string dapat dilakukan dengan menggunakan operator bitwise persamaan (`==`). contoh.
```go
str1 := "hello"
str2 := "world"
fmt.Println(str1 == str2)
```
dalam kode diatas, dilakukan komparasi antara `str1` yang berisis `"hello"` dan `str2` yang bersisi `"world"`. lalu dicetak dalam perintah `fmt.Println(str1 == str2)` yang menghasilkan nilai false, karena perbedaan string di `str1` dan `str2`.

##### String Contains
fungsi contains terdapat dalam paket `strings`, jadi untuk menggunakannya harus mengimport paket terlebih dahulu. fungsi ini digunakan untuk memeriksa apakah terdapat string yang sama dari dua string berbeda. contoh.
```go
import (
			"fmt"
			"strings"
		)

func main() {
	str1 := "Penguin"
	str2 := "Peng"
	fmt.Println(strings.Contains(str1, str2))
}
```
dalam kode diatas, dilakukan pengecekan apakah terdapat substring yang sama dengan nilai dari variabel `str2` pada nilai variabel `str1`. Jika ditemukan nilai yang sama, maka akan memberikan output true, jika sebaliknya maka output-nya false.

### Advance Function
di materi sebelumnya sudah dijelaskan apa itu function. di materi ini,
akan dijelaskan lebih lanjut tentang macam-macam function.

##### Variadic Function
Variading function adalah sebuah fungsi yang digunakan ketika jumlah parameter yang akan digunakan tidak ditentukan. contoh.
```go
func sum(num ...int) int {
	// Algorithm
}

// Usage
sum(3, 5)
sum(4, 3, 6)
```
dalam kode diatas, fungsi `sum` memiliki satu variabel `num` yang bertipe data integer. karena fungsi ini adalah variadic function, maka nilai dari variabel `num` adalah `slice` temporary dari integer. cara menggunakannya sama seperti `slice` pada umumnya. dapat menggunakan perulangan.

##### Anonymous Function
Anonymous Function adalah fungsi yang tidak memiliki nama. biasanya digunakan untuk membuat `inline-function`. contoh.
```go
func main() {
	// Anonymous Function
	func() {
		fmt.Println("Hello World")
	}()

	// Assign to Variable
	fnc := func() {
		fmt.Println("Hello World")
	}
	fnc()

	// Passing Arguments
	func(str string) {
		fmt.Println(str)		
	}("Hello World")
}
```
pada kode diatas, terdapat tiga cara menggunakan fungsi anonim. fungsi anonim yang biasa digunakan adalah dengan menaruhnya dalam variabel. agar mudah untuk digunakan.

##### Closure
Closure adalah fungsi anonim yang tipe datanya di inisialisasikan diluar fungsi itu sendiri. contoh.
```go
func newCounter() int {
	count := 0
	return func() int {
		return count += 1
	}
}
```
dalam kode diatas, fungsi `newCounter` memiliki variabel integer `count := 0`. yang kemudian pengolahan data `count += 1` dilakukan dalam fungsi anonim. meski pemanggilan fungsi `newCounter` diulangi, nilai `count` tidak akan kembali menjadi `0`, tetapi akan terus bertambah sebagaimana operasi `count += 1` terjadi dalam fungsi anonim.

### Pointer
Pointer adalah sebuah variabel yang tersimpan didalam memory address dari variabel lainnya. Pointer dapat memutasi data yang ditunjuk. untuk mendeklaraskan pointer, dapat dilakukan dengan cara menambahkan bintang didepan tipedata (`*string`, `*int`). untuk membaca kode memori dari suatu variabel cukup dengan menambahkan tanda `&` didepan nama variabel `&varName`. contoh.
```go
func main() {
	var name string = "syarif"
	var nameAddress *string = &name
	fmt.Println("name (value) = ", name)
	fmt.Println("name (address) = ", &name)
	fmt.Println("nameAddress (value) = ", *nameAddress)
	fmt.Println("nameAddress (value) = ", nameAddress)
}
```
dalam kode diatas, variabel `name = syarif` dideklarasikan sebagai string. juga variabel `nameAddress = &name` dideklarasikan sebagai pointer dengan tipe data string yang berisi kode memori dari variabel `name` yang sebelumnya dideklarasikan. `fmt.Println(&name)` digunakan untuk menampilkan kode memori yang digunakan dari variabel `name`. sementara `fmt.Println(*nameAddress)` digunakan untuk menampilkan nilai dari variabel pointer yang ditunjuk, seperti `nameAddress := &name` yang berarti variabel `nameAddress` menunjuk kode memori dari variabel `name`.

### Struct
Struct adalah user-defined type yang berisi koleksi variabel atau function. contoh.
```go
type Person struct {
	name string
	age int
	address string
}
```
dalam kode diatas, struct `Person` dideklarasikan yang didalamnya terdapat variabel `name` bertipe data `string`, `age` yang bertipe data `integer`, dan `address` yang bertipe data `string`.
```go
func main() {
	p := new(Person)
	p.name = "syarif"
	p.age = 20
	p.address = "batuan"
}
```
dalam kode diatas, variabel `p := new(Person)` merupakan pendeklarasian struct `Person` kedalam variabel `p`. kemudian `p.name = "syarif"` merupakan cara mengisi variabel `name` yang ada didalam strict `Person`.

### Method
Method adalah suatu fungsi yang terdapat pada type, entah itu struct atau tipe data lainnya. menggunakan method dapat mempermudah penulisan kode dengan gaya object-oriented, mempermudah pembacaan dan pemahaman dari suatu fungsi, dan menghindari konflik penamaan. contoh.
```go
func (p Person) Hello() string {
	return fmt.Prinlnt("Hello ", p.name)
}

func main() {
	p := new(Person)
	// ...
	p.Hello()
}
```
dalam kode diatas, fungsi `Hello()` merupakan fungsi dari suatu tipe `Struct`, yang akan menampilkan teks `"Hello <nama>"`. untuk menggunakan fungsi ini, harus mendeklarasikan `Struct` terlebih dahulu. diatas dideklarasikan dalam variabel `p := new(Person)`, lalu di fungsi panggil dibawah dengan kode `p.Hello()`.

### Interface
Interface adalah sekumpulan method yang dapat diimplementasikan pada suatu object. contoh.
```go
type PersonControl interface {
	sayHello() string
}

func (p Person) Hello() string {
	return fmt.Prinlnt("Hello ", p.name)
}

func main() {
	var p PersonControl
	p = Person{"name", 20, "batuan"}
	
	// ...
	p.sayHello()
}
```
dalam kode diatas, interface `PersonControl` dideklarasikan. didalamnya terdapar method `sayHello()` yang digunakan untuk menampilkan teks `"Hello <name>"`. untuk menggunakannya, interface harus dideklarasikan kedalam variabel didalam fungsi `main()` atau fungsi lainnya. untuk kali ini `var p PersonControl` adalah pendeklarasian dari interface kedalam variabel `p`. lalu `p = Person{}` merupakan penggunaan struct `Person` didalam interface. terakhir, untuk memanggil fungsi `sayHello()`, dapat dilakukan dengan kode `p.sayHello()`.
