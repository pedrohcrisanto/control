FactoryBot.define do
  factory :service do
    name { "MyString" }
    description { "MyText" }
    price { "9.99" }
    user { nil }
  end
end
