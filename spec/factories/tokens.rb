FactoryBot.define do
  factory :token do
    user { nil }
    token { "MyString" }
    expires_at { "2021-05-18 14:16:37" }
  end
end
