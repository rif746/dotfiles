# Join – Union – Agregasi – Subquery – Function (DBMS)
dalam materi ini, kita akan mempelajari penggunaan join, union, agregasi, subquery, dan function pada bahasa sql.

## Hasil Praktikum
##### CREATE
- insert 5 operator ([kode](./praktikum/alta_online_shop.sql#L31-L36))
- insert 3 product type ([kode](./praktikum/alta_online_shop.sql#L226-L29))
- insert 2 product dengan type=1 operator=3 ([kode](./praktikum/alta_online_shop.sql#L43-L47))
- insert 3 product dengan type=2 operator=1 ([kode](./praktikum/alta_online_shop.sql#L49-L55))
- insert 3 product dengan type=3 operator=4 ([kode](./praktikum/alta_online_shop.sql#L57-L63))
- insert 3 payment method ([kode](./praktikum/alta_online_shop.sql#L38-L41))
- insert 5 user ([kode](./praktikum/alta_online_shop.sql#L1-L24))
- insert 3 transaksi setiap user ([kode](./praktikum/alta_online_shop.sql#L65-L213))
- insert 3 produk tiap transaksi ([kode](./praktikum/alta_online_shop.sql#L65-L213))

##### SELECT
- select user with gender 'M' ([kode](./praktikum/alta_online_shop.sql#L215-L217))
- select product id 3 ([kode](./praktikum/alta_online_shop.sql#L220))
- select user with createdAt 7 days ago ([kode](./praktikum/alta_online_shop.sql#L222-L224))
- female user count ([kode](./praktikum/alta_online_shop.sql#L226-L228))
- select user order by username asc ([kode](./praktikum/alta_online_shop.sql#L231))
- select 5 product ([kode](./praktikum/alta_online_shop.sql#L215-L234))

##### UPDATE
- update name product=1 to 'product_dummy' ([kode](./praktikum/alta_online_shop.sql#L237))
- update quantity transaction with product = 1 ([kode](./praktikum/alta_online_shop.sql#L240))

##### DELETE
- delete product=1 ([kode](./praktikum/alta_online_shop.sql#L243))
- delete product with type=1 ([kode](./praktikum/alta_online_shop.sql#L246))

##### Join - Union - Subquery - Function
- join data transaction from user=1 and user=2 ([kode](./praktikum/alta_online_shop.sql#L249))
- total price transaction from user=1 ([kode](./praktikum/alta_online_shop.sql#L252))
- select all field from product and name field from type ([kode](./praktikum/alta_online_shop.sql#L261))
- count tramsaction with product type=2 ([kode](./praktikum/alta_online_shop.sql#L254-L258))
- select all from transaction and name from product and users ([kode](./praktikum/alta_online_shop.sql#L264-L268))

