# language seeds

10.times do
  Language.create!(code: Faker::Address.country_code)
end
