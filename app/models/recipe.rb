class Recipe < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true, length: {minimum: 5, maximum: 500}
	belongs_to :chef #chef is singular
	## This says that chef id needs to be present at all times regardless
	## of when this is run
	validates :chef_id, presence: true
end