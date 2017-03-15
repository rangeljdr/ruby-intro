# Code to populate the database ...

# Seed dogs table
ozu_details = { :name     => "Ozu",
                   :license  => "OH-9384764",
                   :age      => 1,
                   :breed    => "Golden Doodle",
                   :owner_id => 1 }

jayda_details = { :name     => "Jayda",
                  :license  => "OH-4893720",
                  :age      => 3,
                  :breed    => "Bull Terrier",
                  :owner_id => 2 }


tenley = Dog.new(ozu_details)
tenley.save

Dog.create(jayda_details)

Dog.find_or_create_by(name: "Eleanor") do |dog|
  dog.license  = "OH-9843098"
  dog.age      = 1
  dog.breed    = "Pit Bull"
  dog.owner_id = 3
end


# Seed ratings table
Rating.create([
  {coolness: 6,  cuteness: 10, judge_id: 1, dog_id: 1 },
  {coolness: 10, cuteness: 6,  judge_id: 1, dog_id: 2 },
  {coolness: 5,  cuteness: 10, judge_id: 2, dog_id: 1 },
  {coolness: 10, cuteness: 8,  judge_id: 2, dog_id: 2 },
  {coolness: 7,  cuteness: 5,  judge_id: 3, dog_id: 1 },
  {coolness: 7,  cuteness: 4,  judge_id: 4, dog_id: 3 },
  {coolness: 5,  cuteness: 3,  judge_id: 5, dog_id: 3 }
])


# Seed people table
Person.create([
  {first_name: "Teagan",  last_name: "Hickman" },
  {first_name: "Taylor",  last_name: "Long-Hurst" },
  {first_name: "Aaron",   last_name: "Cumbow" },
  {first_name: "Joseph",  last_name: "Leal" },
  {first_name: "Susan",   last_name: "Spallino" },
])
