FactoryBot.define do
  factory :depend do
    nameemail { "MyString" }
    gender { "MyString" }
    cpf { "MyString" }
    date_of_birth { "2019-02-03 11:04:51" }
    active { false }
    customer { nil }
  end
end
