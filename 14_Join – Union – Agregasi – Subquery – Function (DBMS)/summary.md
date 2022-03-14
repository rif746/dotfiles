# Resume
Ringkasan untuk materi Join – Union – Agregasi – Subquery – Function (DBMS).

### Join
```sql
SELECT u.username, m.text FROM users u INNER JOIN messsages m ON u.id = m.user_id;
```
*query* diatas untuk melakukan `INNER JOIN`, dimana nilai yang dikembalikan adalah nilai yang memenuhi syarat `u.id = m.user_id`.
```sql
SELECT u.username, m.text FROM users u RIGHT JOIN messsages m ON u.id = m.user_id;
```
*query* diatas untuk melakukan `RIGHT JOIN`, dimana nilai yang dikembalikan adalah seluruh nilai dari tabel kiri yang dikenai kondisi `ON`, dan hanya nilai yang memenuhi kondisi join dari tabel kanan.
```sql
SELECT u.username, m.text FROM users u LEFT JOIN messsages m ON u.id = m.user_id;
```
*query* diatas untuk melakukan `LEFT JOIN`, dimana nilai yang dikembalikan adalah seluruh nilai dari tabel kanan yang dikenai kondisi `ON`, dan hanya nilai yang memenuhi kondisi join dari tabel kiri.

### Union
```sql
SELECT username FROM users WHERE id = 1
UNION
SELECT username FROM users WHERE id = 2
```
*query* diatas untuk melakukan `UNION`, yang akan menggabungkan dua *query* berbeda. akan tetapi jumlah field yang dipanggil harus sama. seperti *query* diatas, dimana field yang dipanggil hanya field `username`.

### Agregasi
##### MAX
```sql
SELECT MAX(id) as id_terbesar FROM users
```
*query* diatas akan mengembalikan nilai `id` terbesar dengan nama field `id_terbesar` pada tabel `users`.

##### MIN
```sql
SELECT MIN(id) as id_terkecil FROM users
```
*query* diatas akan mengembalikan nilai `id` terkecil dengan nama field `id_terkrcil` pada tabel `users`.

##### SUM
```sql
SELECT SUM(price) as total FROM transcation_details WHERE trans_id = 3
```
*query* diatas akan mengembalikan nilai total harga dengan nama field `total` pada tabel `transcation_details` dimana `trans_id = 3`.

##### Average
```sql
SELECT SUM(price) as total FROM transcation_details WHERE trans_id = 3
```
*query* diatas akan mengembalikan nilai rerata harga dengan nama field `total` pada tabel `transcation_details` dimana `trans_id = 3`.

### Subquery
*Subquery* digunakan untuk membuat *query* didalam *query*. dan dihubungkan dengan operator `=`, `>`, `<`, `IN`, `BETWEEN`. contoh.
```sql
SELECT * FROM messages WHERE user_id IN (SELECT id FROM users)
```
*query* diatas digunakan untuk mengembalikan nilai messages dengan `user_id` yang sesuai dengan `id` pada tabel users.

