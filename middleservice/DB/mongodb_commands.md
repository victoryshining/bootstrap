## create index
db.student.createIndex({"name"})

## sort
db.student.find().sort({"name":1})

## aggregate data
 db.student.aggregate({$group: {_id:"$address",number:{$sum:1}}})
 
 ## full text index
 db.student.ensureIndex({address:"text"})
 db.student.find({$text:{$search:"beijing"})
