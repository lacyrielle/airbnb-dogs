# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  city = City.create!(city_name: Faker::Adress.city)
end

15.times do
  dog = Dog.create!(doggy_name: Faker::Creature::Dog.name, city: City.all.sample)
end

15.times do
  dogsitter = Dogsitter.create!(full_name: Faker::Name.name, city: City.all.sample)
end

10.times do
  stroll = Stroll.create!(date: Faker::Time.forward(days: 360, period: :day, format: :long), dogsitter: Dogsitter.all.sample, city: City.all.sample)
end
