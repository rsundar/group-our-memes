FactoryBot.define do
  factory :user, class: 'User' do
    username { Faker::Internet.username }
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6) }
  end
end

FactoryBot.define do
  factory :groups, class: 'Group' do
    user
    name { Faker::Lorem.word }
  end
end

FactoryBot.define do
  factory :transactions, class: 'Transaction' do
    user
    name { Faker::Lorem.characters(number: 5) }
    about { Faker::Lorem.characters(number: 10) }
    rating { Faker::Number.number(digits: 1) }
  end
end
