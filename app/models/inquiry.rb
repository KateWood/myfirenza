class Inquiry < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :phone, presence: true
	validates :city_of_interest, presence: true
	validates :state, presence: true
	validates :zip, presence: true
	validates :reason, presence: true
	validates :networth, presence: true
	validates :liquidity, presence: true
end