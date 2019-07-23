FactoryBot.define do
  factory :order_service do
    service { nil }
    amount { 1 }
    employee { "MyString" }
    date { "2019-07-23" }
    starttime { "2019-07-23 19:56:36" }
    endtime { "2019-07-23 19:56:36" }
    detail { "MyText" }
    user { nil }
    totalvalue { "9.99" }
    liquidvalue { "9.99" }
    discount { "9.99" }
  end
end
