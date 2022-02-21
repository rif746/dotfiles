# Resume
Ringkasan untuk materi Time Complexity and Space Complexity. 

### Time Complexity
Penggunaan Time Complexity mempermudah kita untuk mengetahui waktu bagi sistem memproses suatu perintah. Untuk menghitungnya dengan menentukan seberapa banyak operasi dominan yang dilakukan. Operasi dominan adalah suatu operasi yang primitif, seperti operasi aritmatika.

contoh operasi dominan.
```go
func sum(n int) int {
	var index int
	for i:= 1; i <= n; i++ {
		index += i
	}
	return index
}
```
kode diatas merupakan operasi dominan, dimana `index + i` dilakukan sebanyak `n` kali.

### Jenis Time Complexity

#### Constant Time - O(1)
jumlah operasi dari Constant Time adalah tetap. contohnya.
```go
func sum(i, j int) int {
	return i + j
}
```
dalam kode diatas, operasi penjumlahan `i + j` hanya dilakukan sekali saja.

#### Linear Time - O(n)
operasi dari Linear Time berada didalam operasi perulangan. contohnya.
```go
var index int
for true {
	if index > 10 {
		return false
	}
	index += 1
}
```
dalam kode diatas, akan dilakukan perulangan dengan operasi `index += 1` atau sama dengan `index = index + 1` hingga nilai index lebih besar dari 10.

#### Logarithmic Time - O(log n)
operasi Logarithmic Time berada didalam perulangan yang dilakukan sebanyak `n` kali. dimana `n` selalu dibagi 2 disetiap iterasinya. contohnya.
```go
var index int = 100
var res int
for true {
	if index < 1 {
		return false
	}
	index /= 2
	res += 1
}
```
dalam kode diatas, akan dilakukan perulangan dengan operasi `index /= 2` atau sama dengan `index = index / 2` hingga nilai index berada dibawah 1.

#### Quadratic Time - O(n^2)
operasi Quadratic Time merupakan operasi perulangan didalam perulangan. contohnya.
```go
for i := 1; i <= 10; i++ {
	for j := 1; j <= 10; j++ {
		res := i*j 
	}
}
```
dalam kode diatas, akan dilakukan perkalian `res := i * j` yang akan diulang sebanyak 10 kali. dan akan diulang lagi sebanyak 10 kali lagi.
