class PagesController < ApplicationController
	def home
		@inquiry = Inquiry.new
	end

	def main
		@inquiry = Inquiry.new
	end
end
