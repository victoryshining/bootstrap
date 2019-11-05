## create index
db.student.createIndex({"name"})

## sort
db.student.find().sort({"name":1})

## aggregate data
 db.student.aggregate({$group: {_id:"$address",number:{$sum:1}}})
 
 https://github.com/ozlerhakan/mongodb-json-files/blob/master/datasets/products.json
 db.products.aggregate({$group:{_id:null,value:{$min:"$rating"}}})
 db.products.aggregate({ $project:{ name:1, monthly_price:1 } })
 db.products.aggregate([{$match:{ monthly_price:{$gt:50,$lt:500}}},{$group:{_id:null,count:{$sum:1}}}])
 
 ## full text index
 db.student.ensureIndex({address:"text"})
 db.student.find({$text:{$search:"beijing"})
 
 ## db
 https://www.runoob.com/mongodb/mongodb-relationships.html
