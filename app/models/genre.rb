class Genre < ApplicationRecord

	validates :name, presence: true
	validates :name, uniqueness: true

	has_many :movies, dependent: :destroy
	
end
