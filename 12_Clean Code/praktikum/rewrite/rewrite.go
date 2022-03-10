package main

import "fmt"

type Kendaraan struct {
	roda int
	kecepatan int
}

// Struct Mobil extends Kendaraan
type Mobil struct {
	Kendaraan
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

	var mobilLambat Mobil
	mobilLambat.Jalan()
}
