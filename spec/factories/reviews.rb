# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    guide
    score { Faker::Number.within(1..5) }
    comment { Faker::Lorem.sentence }
  end
end
