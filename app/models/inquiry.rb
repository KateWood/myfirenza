class Inquiry < ActiveRecord::Base
	validates :email, presence: true
end