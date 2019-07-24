FactoryBot.define do
  factory :order_service do
    service { rand(1..5) }
    amount { Faker::Number.number(10) }
    employee { Faker::Name.name }
    date { Faker::Date.between(2.days.ago, Date.today) }
    starttime { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    endtime { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    detail { Faker::Lorem.sentence(3) }
    user { rand(1..5) }
    totalvalue { Faker::Number.decimal(5) }
    liquidvalue { Faker::Number.decimal(5)}
    discount { Faker::Number.decimal(1) }
  end
end
