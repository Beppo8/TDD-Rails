FactoryBot.define do
  factory :employee do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 10, max_length: 20) }
    age { rand{18...60} }
  end
end
