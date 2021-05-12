FactoryBot.define do
    factory :user do
        email {"beppo@gmail.com"}
        age {21}
        password_digest {"MyString"}
        type {"test"}
    end
end