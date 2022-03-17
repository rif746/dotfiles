db.books.insertMany([
	{_id:1, title: "Wawasan Pancasila", authorID: 1, publisherID: 1, price: 71200, 
		stats: {page: 324, weight: 300}, publishedAt: new Date("2018-10-01"), category: ["social", "politics"]},
	{_id: 2, title: "Mata Air Keteladanan", authorID: 1, publisherID: 2, price: 106250,
		stats: {page: 672, weight: 650}, publishedAt: new Date("2017-09-01"), category: ["social", "politics"]},
	{_id: 3, title: "Revolusi Pancasila", authorID: 1, publisherID: 1, price: 54400,
		stats: {page: 220, weight: 500}, publishedAt: new Date("2015-05-01"), category: ["social", "politics"]},
	{_id: 4, title: "Self Driving", authorID: 2, publisherID: 1, price: 58650,
		stats:{page: 286, weight: 300}, publishedAt: new Date("2018-05-01"), category: ["self-development"]},
	{_id: 5, title: "Self Disruption", authorID: 2, publisherID: 2, price: 83300,
		stats: {page: 400, weight: 800}, publishedAt: new Date("2018-05-01"), category: ["self-development"]}
])

db.authors.insertMany([
	{_id:1, firstName: "Yudi", lastName: "Latif"},
	{_id:2, firstName: "Rhenald", lastName: "Kasali"}
])

db.publishers.insertMany([
	{_id:1, publisherName: "Expose"},
	{_id:2, publisherName: "Mizan"}
])

// join book with author id 1 and 2
db.books.find({$or: [{authorID: 1}, {authorID: 2}]})

// show book title and its price with author id 1
db.books.find({authorID: 1}, {_id: 0, _id: true, title: true, price: true})

// show books page from author id 2
db.books.aggregate(
   [
	 	 {$match: {authorID: 2}},
     {
       $group:
         {
           _id: 2,
           totalAmount: { $sum: "$stats.page" },
           count: { $sum: 1 }
         }
     }
   ]
)

// show all books and its author
db.books.aggregate([
	{
		$lookup: {
			from: "authors",
			localField: "authorID",
			foreignField: "_id",
			as: "author"
		}
	}
])

// show all books and its author and publisher
db.books.aggregate([
	{
		$lookup: {
			from: "authors",
			localField: "authorID",
			foreignField: "_id",
			as: "author"
		}
	},
	{
		$lookup: {
			from: "publishers",
			localField: "publisherID",
			foreignField: "_id",
			as: "publisher"
		}
	},

])

// summary data author and books written and publishers
// ga tau gimana caranya, bingung.

// discount
db.books.aggregate([
	{ $project: {
		price: 1,
		promo: {
			$cond: [ { $gte: [ "$price", 60000 ] }, "2%", "1%" ],
			$cond: [ { $gte: [ "$price", 90000 ] }, "3%", "2%" ],
		}
	} }
])

// show all books and its author and publisher
db.books.aggregate([
	{
		$lookup: {
			from: "authors",
			localField: "authorID",
			foreignField: "_id",
			as: "author"
		}
	},
	{
		$lookup: {
			from: "publishers",
			localField: "publisherID",
			foreignField: "_id",
			as: "publisher"
		},
	},
	{ $project: {
		title: true,
		author: "$author.firstName",
		publisher: "$publisher.publisherName",
		price: true
	} },
	{ $sort: { price: -1 } }
])

// show book title, price, and publisher.
db.books.aggregate([
	{
		$lookup: {
			from: "publishers",
			localField: "publisherID",
			foreignField: "_id",
			as: "publisher"
		},
	},
	{ $project: {
		title: true,
		publisher: "$publisher.publisherName",
		price: true
	} },
])
	
// show only id 3 and 4.
db.books.aggregate([
	{
		$lookup: {
			from: "publishers",
			localField: "publisherID",
			foreignField: "_id",
			as: "publisher"
		},
	},
	{ $match: { $or: [ {_id: 3}, {_id: 4} ] } },
	{ $project: {
		title: true,
		publisher: "$publisher.publisherName",
		price: true
	} },
])
	
//
//
//
//
//
