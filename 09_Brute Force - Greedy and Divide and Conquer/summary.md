# Resume
Ringkasan untuk materi Brute Force - Greedy and Divide and Conquer.

### Brute Force
Brute Force adalah suatu metode yang digunakan untuk menyelesaikan suatu masalah dengan melakukan pengecekan terhadap seluruh indeks untuk mendapatkan solusi yang tepat. Brute Force dilakukan ketika tidak ada pilihan algoritma lain. secara teori Brute Force dapat dapat menyelesaikan masalah, tetapi membutuhkan waktu yang lebih lama untuk mendapatkan solusi yang tepat. contoh.
```go
func getMinMax(number ...int) (min, max int) {
	var num_min int
	var num_max int
	for _, value := range number {
		if num_min == 0 || num_min > value {
			num_min = value
		}
		if num_max == 0 || num_max < value {
			num_max = value
		}
	}
	return num_min, num_max
}
```
dalam kode diatas, pencarian nilai minimum dan maximum dilakukan dengan metode Brute Force. dengan melakukan perulangan terhadap nilai dari parameter number, yang kemudian dilakukan pengecekan, jika `num_min` bernilai `0` atau lebih besar dari nilai `value` maka nilai `num_min` akan diubah menjadi nilai dari `value`. sama halnya dilakukan pada pengecekan `num_max`, jika variabel `num_max` bernilai `0` atau lebih kecil dari `value` maka nilai dari `num_max` akan diubah menjadi nilai dari `value`.

### Divide and Conquer
Divide & Conquer merupakan suatu problem-solving paradigm dimana masalah dipermudah dengan membaginya menjadi bagian kecil, lalu menyelesaikan setiap bagiannya.

Langkah untuk melakukannya adalah sebagai berikut.
- Divide: membagi masalah yang besar menjadi bagian kecil.
- Conquer: langsung menyelesaikan masalah yang cukup kecil.
- Combine: jika dibutuhkan, maka perlu menggabungkan setiap solusi untuk mengatasi masalah yang lebih besar.

```go
func binarySearch(arr []int, x int) (result int){
	left := 1
	right := len(arr)

	for (left <= right && result == 0) {
		center := (left + right) / 2
		if arr[center] > x {
			right -= 1
		} else if arr[center] < x {
			left += 1
		} else if arr[center] == x {
			result = center
		}
	}
	return
}
```
dalam kode diatas, terdapat sebuah fungsi binary search. dimana parameternya adalah `arr` yang berupa array integer, dan `x` yang berupa integer. terdapat variabel `left` yang bernilai `1` dan `right` yang bernilai jumlah banyak array dalam variabel `arr`. lalu terdapat perulangan yang akan berhenti ketika nilai `left` lebih besar atau sama denga nilai `right` dan nilai `result` tidak sama dengan 0. didalam perulangan, dilakukan operasi aritmatika untuk menentukan titik tengah dari variabel `arr` dengan `center = (left + right) / 2`. setelah menemukan titik tengahnya, dilakukan pengecekan. jika nilai `arr[center]` lebih besar dari `x` maka nilai pada variabel `right` berkurang 1. jika nilai `arr[center]` lebih kecil dari `x` maka nilai pada variabel `left` bertambah 1. jika nbilai pada variabel `arr[center]` sama dengan `x` maka akan merubah nilai `result` menjadi nilai `center`. dan perulangan selesai.

### Greedy
Suatu algoritma dapat dikatakan greedy ketika algoritma tersebut membuat keputusan optimal pada setiap langkah dengan harapan akhirnya dapat menuju solusi optimal.

