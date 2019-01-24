class Distribuitor < ApplicationRecord

	validates :rsocial, :cnpj, :phone, :address, :zipcode, :contact, presence: true
	validates :cnpj, uniqueness: true

end
