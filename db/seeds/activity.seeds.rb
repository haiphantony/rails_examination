# activity seed
10.times do
  Activity.create!(name: Faker::Name.name)
end
