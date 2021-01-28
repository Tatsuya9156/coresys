FactoryBot.define do
  factory :employee do
    employee_number       { Faker::Number.number(digits: 4) }
    name                  { Gimai.kanji }
    name_kana             { Gimai.katakana }
    position              { "部長" }
    phone                 { Faker::Number.number(digits: 11) }
    admin                 { false }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end