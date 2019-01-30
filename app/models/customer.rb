class Customer < ApplicationRecord

	validates :name, :cpf, :password, :password_confirmation, :email, :address, :phone, presence: true
	validates :name, :cpf, :email, uniqueness: true

	validates_length_of :password, :password_confirmation, maximum: 8

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

	validates_confirmation_of :password #validates if password == password_confirmation
end
