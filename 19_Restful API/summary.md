# Resume
Ringkasan untuk materi Restful API.

### Application Programming Interface (API)
sekumpulan fungsi dan prosedur yang mengizinkan aplikasi untuk mengakses fitur, data, atau layanan lainnya.

#### How API Work
*Client* mengirimkan sebuah permintaan untuk mengakses suatu data pada *Server*, lalu oleh *Server* direspon dengan mengembalikan sebuah nilai atau data yang diminta oleh *Client*.

#### Front-End Back-End Integration
*Front-End* memiliki banyak jenis, seperti *web*, *mobile*, dan *desktop*. untuk menghubungkan semua *platform* yang ada, dibutuhkan sebuah **API** yang berisi logika bisnis dari suatu aplikasi dan terhubung ke basis data. dengan begitu, setiap aplikasi yang berjalan di *platform* berbeda dapat menggunakan sistem yang sama.

### Representational State Transfer (REST)
**REST** merupakan sekumpulan aturan yang berfungsi untuk membangun sebuah aplikasi terdistribusi. menggunakan **HTTP Protocol** untuk komunikasi antara *Client* dan *Server* melalui sebuah *Endpoint* url. **HTTP Request Method** yang biasa digunakan adalah `GET` untuk pengambilan data, `POST` untuk pengiriman data, `PUT` untuk mengubah data, dan `DELETE` untuk menghapus data. biasanya permintaan dan respon berupa kode **JSON** atau **XML**.

### JavaSript Object Notation (JSON)
**JSON** merupakan sebuah format yang digunakan untuk melakukan pertukaran dan penyimpanan data. biasanya digunakan pada *database* yang berbasi dokumen dan **HTTP Request**. contoh penyimpanan yang menggunakan **JSON**.
```json
{
	"namaDepan": "Syarif",
	"namaBelakang": "Ubaidillah",
	"kelas": "Backend Golang"
}
```

### API Tools
untuk membantu dalam pembuatan **API**, dibutuhkan aplikasi lain yang dapat mengirim permintaan dan menerima respon yang dibuat. salah satu yang paling banyak digunakan adalah **Postman**.
	
