FactoryBot.define do
  factory :post do
    cooking_name   { '名前' }
    impression     { '感想' }
    price          { '300' }
    category_id    { '2' }
    opening        { '10:00:00' }
    closing        { '22:00:00' }
    address        { '1-1' }
    prefecture_id  { '2' }
    city           { '福岡市博多区' }
    store_name     { 'テスト' }
    association :user
  end
end
