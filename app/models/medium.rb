class Medium < ApplicationRecord

	has_many :items, dependent: :destroy

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :value, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
	
end
