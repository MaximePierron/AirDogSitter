# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all

DogSitter.destroy_all

Dog.destroy_all

Stroll.destroy_all

25.times do
    city = City.create!(city_name: Faker::Address.city)
end

200.times do
    dog_sitter = DogSitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

500.times do
    dog = Dog.create!(nick_name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, age: Faker::Creature::Dog.age, city_id: City.all.sample.id)
end

500.times do
    stroll = Stroll.create!(date: Faker::Date.in_date_period, location: Faker::Address.community, duration: rand(15..60), city_id: City.all.sample.id, dog_id: Dog.all.sample.id, dog_sitter_id: DogSitter.all.sample.id)
end

puts "25 cities, 200 dog-sitters, 500 dogs, 500 strolls"