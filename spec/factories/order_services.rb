FactoryBot.define do
  factory :order_service do
    service { nil }
    amount { 1 }
    employee { "MyString" }
    datestart { "2019-07-23 00:44:32" }
    dateend { "2019-07-23 00:44:32" }
    detail { "MyText" }
    user { nil }
  end
end
