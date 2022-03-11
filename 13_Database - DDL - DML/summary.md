# Resume
Ringkasan untuk materi Database - DDL - DML.

### Database
***Database*** adalah tempat penyimpanan sekumpulan data yang terorganisir.
| Model Account |
|---------------|
| Display Name	|
|	Username			|
|	Bio						|
| Location			|
| Join Date			|
tabel diatas adalah contoh model dari sebuah basis data.

### Database Relationship
#### One to One
satu *record* pada tabel dapat dapat direferensikan oleh satu *record* pada tabel lain. misal setiap pengguna hanya memiliki satu foto profil.

#### One to Many
satu *record* pada tabel dapat dapat direferensikan oleh banyak *record* pada tabel lain. misal setiap pengguna dapat berkomentar dibanyak postingan.

#### Many to Many
banyak *record* pada tabel dapat dapat direferensikan oleh banyak *record* pada tabel lain. misal setiap pengguna dapat mengikuti dan diikuti oleh pengguna lainnya.

### Definition Data Language (DDL)
perintah untuk mendefinisikan struktur data dalam *database*. DDL digunakan pada *database* yang menggunakan SQL *Structured Query Language*.

#### DDL Statement
- `CREATE DATABASE db_name;`
- `USE db_name;`
- `CREATE TABLE table_name(id integer, ...);`
- `DROP TABLE table_name;`
- `RENAME TABLE table_name TO new_name`
- `ALTER TABLE table_name...`

### Data Manipulation Language (DML)
perintah yang digunakan untuk memanipulasi data dalam tabel dari suatu *database*.

##### Insert
```sql
INSERT INTO users(username, password, level) VALUES('username', 'password', 3);
```
diatas adalah *query* untuk menambahkan data ke tabel `users`, dengan field `username`, `password`, dan `level`, yang isinya `"username"`, `"password"`, dan `3`.

##### Select
```sql
SELECT * FROM users;
```
diatas adalah *query* untuk menampilkan seluruh data dari tabel `users`.

##### Update
```sql
UPDATE users SET username = 'user1', password = 'password' WHERE id = 1;
```
diatas adalah *query* untuk update data pada tabel `users` pada `id = 1`.

##### Delete
```sql
DELETE FROM users WHERE id = 1;
```
diatas adalah *query* untuk menghapus data pada tabel `users` dengan `id = 1`.

##### Like/Between
```sql
SELECT * FROM users WHERE username LIKE S%;
```
diatas adalah *query* untuk memilih `username` yang memiliki huruf depan `S` dari tabel `users`.

```sql
SELECT * FROM users WHERE id BETWEEN 1 AND 4;
```
diatas adalah *query* untuk memilih data dari tabel `users` dengan `id` dari 1 hingga 4.

##### AND/OR
```sql
SELECT * FROM users WHERE username LIKE S% OR id BETWEEN 1 AND 4;
```
diatas adalah *query* untuk memilih data dari tabel `users` dimana `username` memiliki huruf depan `S` atau `id` antara 1 hingga 4.

```sql
SELECT * FROM users WHERE username LIKE S% OR id BETWEEN 1 AND 4;
```
diatas adalah *query* untuk memilih data dari tabel `users` dimana `username` memiliki huruf depan `S` dan memiliki `id` antara 1 hingga 4.

##### Order By
```sql
SELECT * FROM users WHERE username LIKE S% OR id BETWEEN 1 AND 4 ORDER BY id DESC;
```
diatas adalah *query* untuk memilih data dari tabel `users` dimana `username` memiliki huruf depan `S` dan memiliki `id` antara 1 hingga 4, dan diurutkan berdasarkan `id` dari yang terbesar ke terkecil.

##### LIMIT
```sql
SELECT * FROM users WHERE username LIKE S% OR id BETWEEN 1 AND 4 LIMIT 2;
```
diatas adalah *query* untuk memilih data dari tabel `users` dimana `username` memiliki huruf depan `S` dan memiliki `id` antara 1 hingga 4, dan dibatasi 2 record saja.
