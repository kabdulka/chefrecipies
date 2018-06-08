class Chef < ApplicationRecord
	# before saving a chef object takes the email of that object
	# references it by using self and turn it to downcase then save it
	before_save {self.email = email.downcase}
	## Add validation to chefs
	validates :chefname, presence: true, length: {maximum: 30}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255},
				format: {with: VALID_EMAIL_REGEX},
				uniqueness: { case_sensitive: false }

	has_many :recipes #note recipes is plural
end

















