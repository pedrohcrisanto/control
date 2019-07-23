FactoryBot.define do
  factory :order_service do
    service { nil }
    amount { 1 }
    employee { "MyString" }
    date { "2019-07-23" }
    starttime { "2019-07-23 17:43:00" }
    endtime { "2019-07-23 17:43:00" }
    detail { "MyText" }
    user { nil }
  end
end
