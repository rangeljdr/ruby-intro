require 'sqlite3'
require 'faker'

$db = SQLite3::Database.new "students.db"

$db.execute("drop table if exists students;")

$db.execute(<<-SQL
  create table students
  (
    last_name varchar(255),
    first_name varchar(255),
    cohort varchar(255),
    week int
  );
    SQL
)

puts "-"*50

10.times do |i|
  customer = [Faker::Name.last_name, Faker::Name.first_name, Faker::Company.bs]
end
