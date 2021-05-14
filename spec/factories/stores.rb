FactoryBot.define do
  factory :store do
    name { Faker::Games::Zelda.game }
  end
end
