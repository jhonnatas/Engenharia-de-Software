class Director < ApplicationRecord

	belongs_to :movie, optional: true #allows null

	validates :name, presence: true
	validates :name, uniqueness: true

end
