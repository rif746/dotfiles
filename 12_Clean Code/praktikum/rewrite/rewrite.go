package main

import "fmt"

type Kendaraan struct {
	roda int
	kecepatan int
}

type Mobil interface {
	TambahKecepatan()
	Jalan()
}

func (k *Kendaraan) TambahKecepatan(speed int) {
	k.kecepatan += speed
}

func (k *Kendaraan) Jalan() {
	k.TambahKecepatan(10)
}

func main() {
	fmt.Println("Rewrite")
	var mobilNgebut Kendaraan
	mobilNgebut.Jalan()
	mobilNgebut.Jalan()
	mobilNgebut.Jalan()

	var mobilLambat Kendaraan
	mobilLambat.Jalan()
}
