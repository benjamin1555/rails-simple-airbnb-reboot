puts "Clearing DB..."
Flat.destroy_all

puts "Filling DB..."

8.times do
  flat = Flat.create!(
    name: Faker::Movies::HarryPotter.location,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraphs(number: 2),
    price_per_night: rand(30..250),
    number_of_guests: rand(2..10)
  )
  puts "Created flat id.#{flat.id}"
end

puts "Done filling DB!"
