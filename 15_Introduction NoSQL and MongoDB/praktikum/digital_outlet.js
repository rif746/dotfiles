use digital_oulet

db.createCollection('users')
db.createCollection('operators')
db.createCollection('product_type')
db.createCollection('product')
db.createCollection('payment_method')
db.createCollection('transaction')
db.createCollection('transaction_details')

db.users.createIndex({username: 1}, {unique: true})
db.operators.createIndex({name: 1}, {unique: true})
db.product_type.createIndex({name: 1}, {unique: true})
db.product.createIndex({name: 1}, {unique: true})
db.payment_method.createIndex({name: 1}, unique: true)

// Insert users
db.users.insert([
	{username: "syarif", fullName: "Syarif Ubaidillah", gender: "M"},
	{username: "ishak", fullName: "RB. Abd. Ishak", gender: "M"},
	{username: "alvin", fullName: "Alvin Maulana", gender: "M"},
	{username: "eka", fullName: "Eka Pratiwi", gender: "F"},
	{username: "aisah", fullName: "Nur Aisah", gender: "F"},
])

// Insert operators
db.operators.insert([
	{name: "XL"}
	{name: "Axis"},
	{name: "Tri"},
	{name: "Telkomsel"},
	{name: "Indosat Ooredoo"},
])

// Insert product_type
db.product_type.insert([
	{name: "XL"}
	{name: "Axis"},
	{name: "Tri"},
	{name: "Telkomsel"},
	{name: "Indosat Ooredoo"},
])

// Insert product
db.product.insert([
	{name: "Tri AON Unlimited A", description: "Tri AON Unlimited 26GB", price: 65000,
			type: {$ref: 'product_type', $id: ObjectId("62317fdab2ec92965d7e0b15") },
			operator: {$ref: 'operators', $id: ObjectId("62317fdab2ec92965d7e0b12") }},
	{name: "Tri AON Unlimited B", description: "Tri AON Unlimited 36GB", price: 85000, 
			type: {$ref: 'product_type', $id: ObjectId("62317fdab2ec92965d7e0b15") },
			operator: {$ref: 'operators', $id: ObjectId("62317fdab2ec92965d7e0b12") }},

	{name: "XL Addons 5GB", description: "XL Addons 5GB 24 Jam 1 Hari", price: 5000,
			type: {$ref: 'product_type', $id: ObjectId("62317fdab2ec92965d7e0b16") },
			operator: {$ref: 'operators', $id: ObjectId("62317fdab2ec92965d7e0b10") }},
	{name: "XL Addons 10GB", description: "XL Addons 10GB 24 Jam 7 Hari", price: 15000, 
			type: {$ref: 'product_type', $id: ObjectId("62317fdab2ec92965d7e0b16") },
			operator: {$ref: 'operators', $id: ObjectId("62317fdab2ec92965d7e0b10") }},
	{name: "XL Addons 15GB", description: "XL Addons 15GB 24 Jam 30 Hari", price: 25000, 
			type: {$ref: 'product_type', $id: ObjectId("62317fdab2ec92965d7e0b16") },
			operator: {$ref: 'operators', $id: ObjectId("62317fdab2ec92965d7e0b10") }},

	{name: "TSel WhatsApp 1 Hari", description: "TSel WhatsApp 1 Hari sepuasnya", price: 3000, 
			type: {$ref: 'product_type', $id: ObjectId("62317fdab2ec92965d7e0b17") },
			operator: {$ref: 'operators', $id: ObjectId("62317fdab2ec92965d7e0b13") }},
	{name: "TSel WhatsApp 15 Hari", description: "TSel WhatsApp 1 Hari sepuasnya", price: 12000, 
			type: {$ref: 'product_type', $id: ObjectId("62317fdab2ec92965d7e0b17") },
			operator: {$ref: 'operators', $id: ObjectId("62317fdab2ec92965d7e0b13") }},
	{name: "TSel WhatsApp 30 Hari", description: "TSel WhatsApp 30 Hari sepuasnya", price: 25000, 
			type: {$ref: 'product_type', $id: ObjectId("62317fdab2ec92965d7e0b17") },
			operator: {$ref: 'operators', $id: ObjectId("62317fdab2ec92965d7e0b13") }},
])

// Insert payment method
db.payment_method.insert([
	{name: 'GOPAY', api_key: '$4$AZKLY1hK$Jy+dT4cm3DiH3YWumBRTrcbBGXg$'},
	{name: 'OVO', api_key: '$4$SfKevTIo$WNQ8ePwtyWWyhtzJ2DFd/kAer6o$'},
	{name: 'DANA', api_key: '$4$kFQy0BF/$Ivs2pb9sIdwEqb/sN9PGQi26liM$'}
])

// Insert transaction
db.transaction.insertMany([
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f70009")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f70009")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f70009")}, qty: 3, price: 85000},

	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000a")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000a")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000a")}, qty: 3, price: 85000},

	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000b")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000b")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000b")}, qty: 3, price: 85000},

	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000c")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000c")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000c")}, qty: 3, price: 85000},

	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000d")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000d")}, qty: 3, price: 95000},
	{user: {$ref: 'users', $id: ObjectId("62317ea13e7974e8d1f7000d")}, qty: 3, price: 85000},
])

// Insert transaction details
db.transaction_details.insertMany([
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a65")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a65")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a66")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a66")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a66")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a66")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a67")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a67")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a67")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a68")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a68")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a68")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a69")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a69")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a69")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6a")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6a")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6a")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6b")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6b")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6b")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6c")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6c")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6c")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6d")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6d")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6d")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6e")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6e")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6e")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6f")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6f")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a6f")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a71")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a71")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a71")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a72")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a72")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a72")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},

	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a73")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb27")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a73")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb28")}, qty: 1},
	
	{transaction: {$ref: 'transaction', $id: ObjectId("62318f182f2786cfb42c5a73")}, 
 	payment: {$ref: 'payment_method', $id: ObjectId("62318b788e88bd30e6e49376")}, 
 	product: {$ref: 'product', $id: ObjectId("62318a87aaa5f9b801b6bb2b")}, qty: 1},
]) 

// find user with gender M
db.users.find({gender: "M"})

// find product with id
db.product.find({_id: ObjectId(3)})

// count user with gender F
db.users.find({gender: "F"}).count()

// sort user by fullName
db.users.find().sort({fullName: 1})

// show 5 product
db.users.find().limit(5)

// update product id 1 to product_dummy
db.product.update({_id: ObjectId("62318a87aaa5f9b801b6bb26")}, {$set: {name: 'product_dummy'}})

// update qty to 3 in transaction_details with product 1
db.transaction_details.update({product: ObjectId(1)}, {qty: 3})

// delete product id 1
db.product.remove({id: ObjectId(1)})

// delete product with type id 1
db.product.remove({type: ObjectId(1)})
