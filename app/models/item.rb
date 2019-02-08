class Item < ApplicationRecord

	belongs_to :distribuitor
	belongs_to :medium
	belongs_to :movie

	validates :serial, presence: true
	validates :serial, uniqueness: true

end
