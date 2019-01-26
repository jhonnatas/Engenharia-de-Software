class Movie < ApplicationRecord

	belongs_to :genre

	has_one_attached :img #Active Storage

	validates :title, :title_br, :tipo, presence: true
	validates :title, uniqueness: true
end
