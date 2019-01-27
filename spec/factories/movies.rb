FactoryBot.define do
  factory :movie do
    title { Faker::Company.name}
    title_br { Faker::Company.name }
    year { Faker::Date.between_except(1.year.ago, 5.year.from_now, Date.today)}
    cast { Faker::Seinfeld.character }
    synopsis { Faker::FamilyGuy.quote  }
    tipo {Faker::Address.city }
    duration { Faker::Date.between_except(1.year.ago, 3.year.from_now, Date.today) }
    country { Faker::Address.country  }
    genre
  end
end
