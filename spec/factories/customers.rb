FactoryBot.define do
  factory :customer do
    active { false }
    name { "MyString" }
    status { "MyString" }
    date_of_birth { "2019-01-30 13:50:12" }
    sgender { "MyString" }
    cpf { "MyString" }
    address { "MyString" }
    neighborhood { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zipcode { "MyString" }
    complement { "MyString" }
    phone { "MyString" }
    comercial_phone { "MyString" }
    cellphone { "MyString" }
    workplace { "MyString" }
  end
end
