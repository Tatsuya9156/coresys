FactoryBot.define do
  factory :employee do
    employee_number       { Faker::Number.number(digits: 4) }
    name                  { Gimei.last.kanji }
    name_kana             { Gimei.last.katakana }
    position              { '部長' }
    section               { '受発注チーム' }
    phone                 { Faker::Number.number(digits: 11) }
    admin                 { false }
    enrolled              { true }
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end
