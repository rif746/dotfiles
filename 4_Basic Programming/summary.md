# Resume
Ringkasan untuk materi Basic Programming.

### Tipe Data
pada bahasa go, terdapat beberapa tipe data yang bisa digunakan.
| Tipe Data | Keterangan |
|-----------|------------|
| Boolean   | Tipe data yang bernilai true atau false saja.    |
| Integer		|	Tipe data yang bernilai angka, bilangan real.    |
| Float			| Tipe data yang bernilai angka, bilangan desimal. |
| String		| Tipe data yang memiliki nilai teks.							 |

### Percabangan
Bahasa go memiliki struktur percabangan sama seperti bahasa lainnya. untuk penulisan percabangan pada bahasa golang seperti dibawah.
- If
```go
if n == 0 {
	return true
}
```

- Switch
```go
switch var {
	case val:
		...
		break
	default:
		...
}
```
atau
```go
switch {
	case var > 80:
		// do something
		break
	default:
		// do something
}
```

### Perulangan
Bahasa go hanya memiliki struktur perulangan for. untuk penulisan perulangan pada bahasa golang seperti dibawah.
```go
for i := 0; i < 5; i++ {
	fmt.Println("Print ", i)
}
```
