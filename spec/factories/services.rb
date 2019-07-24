FactoryBot.define do
  factory :service do
    name { Faker::ElectricalComponents.active }
    description { Faker::Lorem.sentence(10) }
    price { Faker::Number.decimal(2) }
    user { rand(1..5) }
  end
end
