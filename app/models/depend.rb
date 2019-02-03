class Depend < ApplicationRecord

  belongs_to :customer


  validates :name, :cpf, :email, presence: true
  validates :name, :cpf, :email, uniqueness: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  #Limits the maximum number of depedents per customer to 3.  
  validate :on => :create do
    if customer && customer.depends.length >= 3
      errors.add(:customer, "Já existem 3 dependentes cadastrados para o titular!")
    end
  end

  
	
end
