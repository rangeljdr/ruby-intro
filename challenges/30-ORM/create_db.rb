require 'sqlite3'
require 'faker'

$db = SQLite3::Database.new "animal_shelter.db", results_as_hash: true

$db.execute("drop table if exists dogs;")

$db.execute(<<-SQL
  create table dogs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (64),
    age INTEGER,
    weight INTEGER
  )
SQL
)

10.times do
  name = Faker::Cat.name
  age = rand(90) + 1
  weight = rand(20) + 1
  dog = [name, age,weight]
  $db.execute("insert into dogs (name,age,weight)
  values (?,?,?)", dog)
end
