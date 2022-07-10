puts "Seeding data..."

require 'faker'
# run a loop 50 times
10.times do
  # create a game with random data
  Role.create(
    character_name: Faker::TvShows::NewGirl.character# random number between 0 and 60
  )
end

50.times do 
  Audition.create(
    actor: Faker::Name.name,
    location: Faker::Address.city,
    phone: Faker::PhoneNumber.cell_phone,
    role_id: rand(0..10),
    hired: [true, false].sample
  )
end


puts "Done seeding!"