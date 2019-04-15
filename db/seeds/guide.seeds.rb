# seed guide
100.times do
  Guide.create!(email: Faker::Internet.email)
end
