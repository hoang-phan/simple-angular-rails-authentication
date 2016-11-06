FactoryGirl.define do
  factory :user do
    full_name { Faker::Name.name }
    email { Faker::Internet.email }
    password 'abcd1234'
    password_confirmation 'abcd1234'
    confirmation_token { Faker::Number.hexadecimal(7) }
  
    trait :confirmed do
      confirmed_at Time.current
    end
  end
end
