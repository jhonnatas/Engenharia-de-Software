FactoryBot.define do
  factory :genre do
    name {Faker::Name.name}
    description {Faker::Movie.quote}
    
  end
end
