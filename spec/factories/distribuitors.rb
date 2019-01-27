FactoryBot.define do
  factory :distribuitor do
    rsocial { Faker::Company.name}
    cnpj { Faker::Company.australian_business_number }
    phone { Faker::PhoneNumber.phone_number}
    address { Faker::Address.city }
    neighborhood { Faker::Address.country }
    city {Faker::Address.city }
    state { Faker::Address.state}
    zipcode {  Faker::Address.postcode }
    complement {Faker::Address.community }
    contact { Faker::Internet.email }
  end

  
end
