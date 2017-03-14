require 'sqlite3'

$db = SQLite3::Database.new("animal_shelter.db", results_as_hash: true)

module ORM_Helper
  def self.symbolize_keys(hash)
    hash.keys.each do |key|
      hash[(key.to_sym rescue key) || key] = hash.delete(key)
    end
  end
end

class Dog
  include ORM_Helper

  def self.all
    $db.execute("SELECT * FROM dogs;").map do |dog_data|
      ORM_Helper.symbolize_keys(dog_data)
      Dog.new(dog_data)
    end
  end

  def self.find(id)
    $db.execute("SELECT * FROM dogs WHERE id = ?", id).map do |dog_data|
      ORM_Helper.symbolize_keys(dog_data)
      Dog.new(dog_data)



=begin

  hello = $db.execute("SELECT * FROM dogs WHERE id = ?", id)
  ORM_Helper.symbolize_keys(hello.first)
  dog = Dog.new(hello.first)

=end

    end
  end

  def self.create(args)
    p args
    dog = [args[:name],args[:age],args[:weight]]

    $db.execute(<<-SQL
      INSERT INTO dogs (name, age, weight)
      VALUES (?,?,?), dog
    )
    SQL
    )
  end

# OTRA OPCION PARA CREAR def self.create

=begin

  def self.create(hash)
  god = Dog.new(hash)
  $db.execute(INSERT INTO dogs (name,age,weight) VALUES(?,?,?)',[hash[:name], hash[:age], hash[:weight]]
  dog.id = $db.last_insert_row_id
  dog

=end
  def self.where(query,name)
    dog =
    $db.execute("SELECT * FROM dogs WHERE #{query}", name).map do |dog_data|
      ORM_Helper.symbolize_keys(dog_data)
      Dog.new(dog_data)
    end
  end


  def initialize(args)
    @id = args[:id]
    @name = args[:name]
    @age = args[:age]
    @weight = args[:weight]
  end
end





# Driver code ### Esto deberia funcionar

# Dog.all
# p Dog.find(1)
# dog2 = Dog.find(2)
ozu = Dog.create(name: 'ozu', age: 6, weight: 14)
# p Dog.where("name = ?", ozu.name)
