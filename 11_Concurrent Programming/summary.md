# Resume
Ringkasan untuk materi **Concurrent Programming**.

### Sequential vs Parallel vs Concurrent
Pada program *sequential*, tugas baru dijalankan setelah tugas sebelumnya selesai. sementara program *parallel*, tugas dapat dijalankan bersamaan namun membutuhkan prosesor *multi-core*. pada program *concurrent*, beberapa tugas dapat dijalankan secara bersamaan maupun satu-persatu.

### Golang Feature
- *Concurrent Execution* (Goroutine)
- *Synchronization and Messaging* (Channels)
- *Multi-way Concurrent Tool* (Select)

### Goroutines
*Goroutine* adalah fungsi atau *method* yang berjalan secara *concurrent* (independen) dengan fungsi lainnya. biaya untuk membuat *goroutine* sangat kecil jika dibandingkan dengan *thread*. *thread* adalah sebuat unit yang mengeksekusi kode dalam sebuah program. untuk membuat *goroutine*, hanya dengan menambahkan `go` didepan fungsi yang akan dieksekusi. contoh jika menggunakan *thread* `hello()`, contoh jika menggunakan *goroutine* `go hello()`.

#### GOMAXPROCS
GOMAXPROCS digunakan untuk mengontrol jumlah *thread* dari sistem operasi yang digunakan untuk mengeksekusi *goroutine*. contoh penggunaan didalam terminal, `GOMAXPROCS=1 go run main.go`.

### Channels
***Channels*** adalah sebuah objek yang membuat *goroutine* dapat berkomunikasi satu sama lain. contoh.
```go
func sayHello(c chan string) {
	data := <- c
	fmt.Printf("Hello %s!", data)
}

func main() {
	c := make(chan string)
	go sayHello(c)
	c <- "Yui"
}
```
dalam kode diatas, contoh penggunaan channel dalam fungsi `sayHello()`. parameter yang digunakan adalah `c` yang bertipe data `string`. untuk mendefinisikannya sebagai `channel`, dengan menambahkan kata `chan` sebelum tipe datanya. pada fungsi `main()` dibuat variabel `c` yang didefinisikan sebagai `channel` dengan tipe data `string`. lalu membuat fungsi agar dijalankan dengan goroutine dengan `go sayHello(c)`. terakhir berikan nilai pada variabel `channel` dengan `c <- "Yui"`.

### Select
*Select* mempermudah untuk mengontrol komunikasi data dari satu atau beberapa *channel*. contoh.
```go
func main() {
	ch1 := make(chan float)
	ch2 := make(chan int)

	// Some Code ...

	for i:= 0; i < 2; i++{
		select {
			case avg := <- ch1:
				fmt.Printf("Avg: %.2f \n", avg)
			case max := <- ch2:
				fmt.Printf("Max: %d", max)
		}
	}
}
```
dalam kode diatas, melakukan perulangan sebanyak 2 kali. didalam perulangan terdapat `select`, dimana akan memilih jika `ch1` tersedia maka akan mengeksekusi `fmt.Printf("Avg: %.2f \n", avg)`, jika `ch2` tersedia maka akan mengeksekusi `fmt.Printf("Avg: %.2f \n", avg)`.

### Race Condition
*Race Condition* adalah suatu kondisi dimana 2 thread mencoba mengakses memori pada saat yang bersamaan, dan salah satunya menulis data.  kondisi ini terjadi karena akses ke *shared memory* tidak tersinkronisasi. contoh *Race Condition*.
```go
func getNum() {
	var i int
	go func() {
		i = 5
	}
	return i
}
```
dalam kode diatas, fungsi `getNum()` akan mengalami *race condition*. hal ini dikarenakan fungsi `goroutine` melakukan penulisan data `i = 5` secara bersamaan dengan `return i`.

### Channel Blocking
dengan *Channel Blocking*, kita dapat melakukan sinkronisasi `goroutine` agar tidak mengalami *race condition*. contoh.
```go
func getNum() {
	var i int
	done := make(chan struct{})
	go func() {
		i = 5
		done <- struct{}{}
	}
	<- done
	return i
}
```
dalam kode diatas, sebelum melakukan `return i` dilakukan *blocking* menggunakan *channel* `done`. dimana sebelum variabel `done` diisi oleh sesuatu, kode setelahnya akan di*block*.
