Booking.destroy_all
Item.destroy_all
User.destroy_all

puts 'database is clean'

items = []

users = []

5.times do
  users << User.create!(
    email: Faker::Internet.email,
    password: 'lewagon',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end


5.times do
  items << Item.create!(
    name: Faker::House.furniture,
    description: Faker::Lorem.sentences(number: 1).join,
    price: rand(5..150),
    location: Faker::Address.city,
    user: users.sample
  )
end

p items
