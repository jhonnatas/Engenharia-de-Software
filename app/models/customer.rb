class Customer < ApplicationRecord

	validates :name, :cpf,  :address, :phone, presence: true
	validates :name, :cpf,  uniqueness: true

	
end
