FactoryBot.define do
  factory :customer do
    zip = "123-4567"
    address = Gimei.address.kanji
    order_date    { "2020-12-31" }
    store_id      { Faker::Number.within(range: 1..16) }
    status_id     { Faker::Number.within(range: 1..8) }
    name          { Gimei.last.kanji }
    name_kana     { Gimei.last.katakana }
    phone         { Faker::Number.number(digits: 11) }
    email         { Faker::Internet.free_email }
    address_zip   { zip }
    address       { address }
    residence_zip { zip }
    residence     { address }
  end
end
