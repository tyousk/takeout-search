FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { '000000a' }
    password_confirmation { password }
    first_name            { '一番' }
    last_name             { '田中' }
    first_name_kana       { 'イチバン' }
    last_name_kana        { 'タナカ' }
    birth_day             { '2000-01-01' }
		gender_id             { '2' }
  end
end