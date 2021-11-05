FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'0000000a'}
    password_confirmation {password}
  end
end
