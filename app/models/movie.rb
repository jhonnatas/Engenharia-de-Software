class Movie < ApplicationRecord

	belongs_to :genre

	validates :title, :title_br, :tipo, presence: true
	validates :title, uniqueness: true
end
