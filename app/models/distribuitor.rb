class Distribuitor < ApplicationRecord

	has_many :items, dependent: :destroy

	validates :rsocial, :cnpj, :phone, :address, :zipcode, :contact, presence: true
	validates :cnpj, uniqueness: true

end
