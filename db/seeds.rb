require 'faker'

puts "Cleaning DB"
Restaurant.destroy_all

puts "Creating Restaurants"
5.times do
  Restaurant.create(name: Faker::Restaurant.name ,
    address:Faker::Address.street_address ,
    stars: rand(1..5),
    chef_name: Faker::Superhero.name)
end

puts "finished"
