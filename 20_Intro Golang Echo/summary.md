# Resume
Ringkasan untuk materi Intro Golang Echo.
	
### What is Echo ?
**Echo** adalah suatu *framework* yang digunakan untuk membuat **API** dengan bahasa **Go**. *framework* ini termasuk minimalis karena tidak membawa *database driver* dan struktur projeknya juga tidak ditentukan, jadi pengembang dapat membuat struktur *folder* untuk projeknya sendiri. meskipun minimalis, **Echo** dapat digabungkan dengan berbagai macam modul untuk melengkapi kebutuhan.

### Advantages Using Echo
##### Optimize Router
**HTTP Touter** sangat dioptimasi dengan *zero dynamic memory allocation* yang memprioritaskan *route* dengan cerdas.
##### Middleware
banyak **Middleware** *buil-in* yang tersedia, pengembang juga dapat membuat **Middleware** yang sesuai kebutuhan.
##### Data Rendering
**API** dapat dikirimkan dengan berbagai macam **HTTP Response**, seperti **JSON**, **XML**, **HTML**, **File**, dan sebagainya.
##### Scalable

##### Data Binding
**Data Binding** yang digunakan untuk menerima *request* dari *client* dapat berupa **JSON**, **XML**, atau **Form-data**.

### Basic Routing and Controller
untuk membuat **API**, pertama kali harus *install* modul **Echo** terlebih dahulu. caranya ketikan perintah.
```bash
$ go get github.com/labstack/echo/v4
$ go mod tidy
```
perintah diatas akan memasang modul **Echo** versi terbaru.

setelah terpasang, barulah dapat di *import* didalam kode.
```go
import (
	...
	"github.com/labstack/echo"
)

func main() {
	...
	e := echo.New()
	...
	e.GET("/", ControllerFunction)
	...
	e.Start(":8080")
}

func ControllerFunction(c echo.Context) error {}
```
dalam kode diatas, dilakukan import untuk modul echo terlebih dahulu. lalu pada fungsi `main()`, **Echo** diinisialisasikan pada variabel `e := echo.New()`. untuk membuat *route* dengan metode *GET*, dapat dilakukan dengan kode `e.GET("/", ControllerFunction)`. dimana `"/"` merupakan jalur dari *route* yang akan dibuat, dan `ControllerFunction` meupakan fungsi yang berisi logika pada *route* yang dibuat.

### Data Rendering
untuk melakukan **Rendering Data**, dibutuhkan sebuah `Struct` untuk memberikan format data yang akan dikembalikan pada *Client*. 
```go
type User struct {
	Name string
	Email string
}

func GetUser(c echo.Context) error {
	user := User{Name: "Syarif", Email: "ubed56pb@gmail.com"}
	return c.JSON(http.StatusOK, user)
}
```
dalam kode diatas, terdapat sebuah *struct* `User`, yang digunakan untuk mengembalikan nilai pada fingsi `GetUser()`. berdasarkan kode diatas, nilai yang dikembalikan pada client akan seperti dibawah.
```json
{
	"Name": "Syarif",
	"Email": "ubed56pb@gmail.com"
}
```

### Retrieve Data
##### URL Params
**URL Params** merupakan parameter yang berada dalam suatu *route*. contohnya `/users/1`, dimana `/users` merupakan *route* dan `1` merupakan parameternya. untuk menggunakan **URL Params** pada **Echo** dapat dilihat pada kode dibawah.
```go
func GetUserByID(c echo.Context) error { 
	id, _ := strconv.Atoi(c.Param("id"))
}
```

##### Query Params
**Query Params** merupakan parameter yang dipisahkan dengan `?` dari *route*. contohnya `/users?id=1`, dimana `/users` merupakan *route* dan `id=1` merupakan parameternya. untuk menggunakan **Query Params** pada **Echo** dapat dilihat pada kode dibawah.
```go
func GetUserByID(c echo.Context) error { 
	name := c.QueryParam("id")
}
```

##### Form Value
**Form Value** merupakan sebuah data yang berada dalam suatu form yang dikirimkan menggunakan *method* `POST`. untuk menggunakan **Form Value** pada **Echo** dapat dilihat pada kode dibawah.
```go
func GetUserByID(c echo.Context) error { 
	name := c.FormValue("id")
}
```

### Binding Data
untuk melakukan **Data Binding**, struct harus diberikan atribut `json` dan `form` jika menggunakan *form* sebagai bentuk *request* dari *client*. contohnya.
```go
type User struct {
	Id int `json:"id" form:"id"`
	Name string `json:"name" form:"name"`
	Email string `json:"email" form:"email"`
	Password string `json:"password" form:"password"`
}
```
lalu untuk melakukan **Data Binding** seperti kode dibawah.
```go
func UpdateUser(c echo.Context) error {
	id, _ := strconv.Atoi(c.Param("id"))

	// Bind Data
	user := User{}
	c.Bind(&user)

	// another logic
	...
}
```
dalam fungsi `c.Bind(&user)`, dilakukan pengecekan nama `json` dan `form` antara *struct* dan *request* dari *client*. jika ada yang sama, maka nilai *request* akan dipasangkan pada nilai *struct*.
