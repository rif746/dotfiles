# Resume
Ringkasan untuk materi Advanced Query - Array - Aggregation.
	
### Export - Import
```bash
$ mongoexport --db test --collection traffic --out traffic.json
```
perintah diatas digunakan untuk ekspor basisdata `test` dengan *collection* `traffic`, dan dikeluarkan pada *file* `traffic.json`.

```bash
$ mongoimport --db users --collection contacts --file contacts.json
```
perintah diatas digunakan untuk impor data dari berkas  `contacts.json`, dan disimpan dalam basisdata `users` dengan *collection* `contacts`.

### Advance Query
#### Comparison
```javascript
db.mycol.find({gender: {$ne: "M"}}) // not equal
db.mycol.find({age: {$gt: 20}}) // greater than
db.mycol.find({age: {$lt: 20}}) // lower than
db.mycol.find({age: {$gte: 20}}) // greater than equal
db.mycol.find({age: {$lte: 20}}) // lower than equal

// logical comparison
db.mycol.find({$or: [{{gender: "M"}, {age: 20}]}) // or
db.mycol.find({$and: [{{gender: "M"}, {age: 20}]}) // and
db.mycol.find({gender: {$not: "M"}}) // not
```
perintah diatas digunakan untuk melakukan persamaan seperti `>`, `<`, `<=`, `>=`, `AND`, `OR`, dan lainnya.

#### Array / Embedded Document
```javascript
db.mycol.find({age: {$all: {17, 18, 19}}}) // like $and: [{age: 17}, {age: 18}, {age: 20}]
```
perintah diatas digunakan untuk melakukan pencarian dengan operator `$all`, dengan field `age` yang memiliki nilai `17`, `18`, dan `19`. cara kerja operator `$all` mirip dengan operator `$and`.
