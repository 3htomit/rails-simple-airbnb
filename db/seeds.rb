require 'faker'

4.times do
  Flat.create!(
    name: Faker::Book.title,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(50..200),
    number_of_guests: rand(5..15)
  )
end
