# Resume
Ringkasan untuk materi Recursive, Number Theory, Sorting, and Searching.

### Recursive
Recursive merupakan suatu fungsi yang dapat menyelesaikan masalah dengan cara memanggil dirinya sendiri. fungsi ini mirip seperti perulangan, yang akan terus memanggil dirinya sendiri hingga suatu kondisi terpenuhi. contoh.
```go
func sumRange(n int) int {
	if n == 0 {
		return n
	} else {
		return n + sumRange(n-1)
	}
}
```
dalam kode diatas, fungsi `sumRange()` digunakan untuk mengkalkulasi jumlah nilai positif dari barisan bilangan `n`. jika `n == 0` maka akan mengeluarkan nilai dari `n`, jika sebaliknya akan mengembalikan nilai `n` sekaligus memanggil fungsi `sumRange(n-1)`. ini berarti akan terus melakukan perulangan `n + (n-1)` hingga nilai `n` menjadi 0.

##### Recursion Strategy
- Base Case: menggunakan metode yang paling sederhana untuk menyelesaikan suatu masalah.
- Recurrence relations: menggunakan metode berbeda yang mirip untuk menyelesaikan suatu masalah.

### Number Theory
Number Theory adalah cabang dari ilmu matematika yang mempelajari tentang integer. beberapa hal yang dipelajari adalah faktorial, bilangan prima, greatest common divisor, dan least common multiple.

##### Factorial
dalam matematika, faktorial dari nilai positif (`n!`) adalah hasil perkalian dari nilai positif kurang dari sama dengan `n`. contoh faktorial dari 5 adalah `5! = 5 x 4 x 3 x 2 x 1 = 120`.

##### Bilangan Prima
Bilangan prima adalah bilangan yang tidak dapat dibagi (Ganjil). semua bilangan ganjil diatas 5 dan tidak dapat dibagi 3 dan 5 adalah bilangan prima. contoh program.
```go
func PrimeCheck(n int) bool {
	if n == 2 {
		return true
	}

	if n < 2 | n % 2 == 0 | n % 3 == 0 | n % 5 == 0 {
		return false
	}

	return true
}
```
dalam kode diatas, dilakukan pengecekan jika `n` sama dengan `2` maka akan mengembalikan nilai `true` yang artinya adalah `n` merupakan bilangan prima. jika `n` kurang dari `2` atau dapat dibagi `2`,  `3`, dan `5` maka akan mengembalikan nilai `false` yang artinya `n` bukanlah bilangan prima.

##### Greatest Common Divior
Greatest Common Divior dari suatu integer `a` dan `b` dinotasikan `gcd(a, b)`, adalah nilai integer terbesar yang membagi kedua nilai `a` dan `b`. contoh `gcd(30, 12) = 6`.

##### Least Common Multiple
Least Common Multiple dinotasikan dengan `lcm(a, b)`, dimana nilai integer terkecil yang dapat dibagi dengan nilai `a` dan `b`.

### Sorting
Sorting adalah proses menata data agar sesuai dengan kebutuhan. kita dapat menata suatu integer, kata-kata, dsb. contoh kita dapat menata nama kota berdasarkan abjad.

##### Selection Sorting [O(n^2)]
Idenya adalah mencari nilai terkecil dari `element` lalu menukarnya dengan `element` pertama. selanjutnya tinggal melakukan sorting tanpa `element` pertama dengan cara yang sama. contoh.
```go
func selectionSort(el []int) []int {
	for i := 0; i < len(el); i++ {
		min := i
		for j := i+1; j < len(el); j++ {
			if el[j] < el[min] {
				min = j
			}
		}
		el[i], el[min] = el[min], el[i]
	}
	return el
}
```
dalam kode diatas, fungsi `selectionSort()` memiliki parameter `el` yang merupakan `slice` bertipe data `integer`. didalamnya menjalankan perulangan `i` sebanyak jumlah data yang ada di variabel `el`. lalu variabel `min := i` merupakan inisialisasi untuk nilai terkecil dari semua data yang ada pada variabel `el`. setelah itu dilakukan perulangan tanpa nilai pertama divariabel `el` dengan `j := i + 1`. dalam perulangan ini mencari nilai terkecil dari seluruh nilai didalam variabel `el`, jika `el[j] < el[min]` maka nilai terkecil akan berubah menjadi nilai `el[j]`. setelah pencarian nilai terkecil selesai, maka akan menukar nilai terkecil dengan nilai pertama dengan `el[i], el[min] = el[min], el[i]`.

##### Built-in Sort (Golang)
di golang terdapat fungsi built-in untuk melakukan sorting, yang dapat diakses dengan meng-import paket `sort`. contoh.
```go
import "sort"

func main() {
	strs := []string{"a", "c", "d", "b"}
	sort.Strings(strs)
	fmt.Println(strs)
}
```
dalam kode diatas, sorting dilakukan terhadap variabel `strs` yang memiliki tipe data `string`. sorting dilakukan dengan fungsi yang dibawa oleh paket `sort`, dengan perintah `sort.Strings(strs)` yang berarti sorting nilai dari tipe data string `strs`.

### Searching
Searching adalah proses pencarian nilai dari suatu daftar nilai. contoh.
```go
func search(arr []int, n int) int {
	for i := 0; i < len(arr); i++ {
		if arr[i] == n {
			return i
		}
	}
	return -1
}
```
dalam kode diatas, pencarian nilai `n` dari variabel `arr`. pencarian dilakukan dengan melakukan perulangan `i` sebanyak jumlah nilai `arr`. jika nilai `arr[i]` sama dengan nilai `n` maka akan mengembalikan `i` yang merupakan posisi dari nilai tersebut. jika tidak ditemukan maka akan mengembalikan nilai `-1` yang berarti error.
