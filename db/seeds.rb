puts "Clearing DB..."
Flat.destroy_all

puts "Filling DB..."

9.times do
  flat_paragraph = ""
  Faker::Lorem.paragraphs(number: 6, supplemental: true).each do |paragraph|
    flat_paragraph += "#{paragraph} \n\n"
  end

  flat = Flat.create!(
    name: Faker::Movies::HarryPotter.location,
    address: Faker::Address.full_address,
    description: flat_paragraph,
    price_per_night: rand(1..250),
    number_of_guests: rand(1..5),
    flat_picture: Faker::LoremFlickr.image(size: "1799x900", search_terms: ['appartment'])
  )
  puts "Created flat id.#{flat.id}"
end

puts "Done filling DB!"
