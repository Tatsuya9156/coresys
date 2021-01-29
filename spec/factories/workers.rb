FactoryBot.define do
  factory :worker do
    name = Gimei.last.kanji
    zip = '123-4567'
    delicode = 'ABC123'
    address = Gimei.address.kanji
    worker_number         { Faker::Number.number(digits: 4) }
    name                  { name }
    name_kana             { Gimei.last.katakana }
    trade_name            { name }
    phone                 { Faker::Number.number(digits: 11) }
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    address_zip           { zip }
    address               { address }
    warehouse_zip         { zip }
    warehouse             { address }
    inaba                 { delicode }
    yodo                  { delicode }
    takubo                { delicode }
    ykkap                 { delicode }
    sankyo                { delicode }
    lixil                 { delicode }
  end
end
