## create index
db.student.createIndex({"name"})

## sort
db.student.find().sort({"name":1})
