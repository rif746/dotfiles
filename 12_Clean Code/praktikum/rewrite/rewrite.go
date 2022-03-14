package main

import "fmt"

type Kendaraan interface {
	TambahKecepatan(speed int)
	Jalan()
}

type Mobil struct {
	Kendaraan
	roda int
	kecepatan int
}

func (k *Mobil) TambahKecepatan(speed int) {
	k.kecepatan += speed
}

func (k *Mobil) Jalan() {
	k.TambahKecepatan(10)
}

func main() {
	fmt.Println("Rewrite")
	var mobilNgebut Mobil
	mobilNgebut.Jalan()
	mobilNgebut.Jalan()
	mobilNgebut.Jalan()
	fmt.Println(mobilNgebut.kecepatan)

	var mobilLambat Mobil
	mobilLambat.Jalan()
	fmt.Println(mobilLambat.kecepatan)
}
