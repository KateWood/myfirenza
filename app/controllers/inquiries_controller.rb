class InquiriesController < ApplicationController

	before_action :set_inquiry, only: [:show, :edit, :update, :destroy]

	def index
		@inquiries = Inquiry.all
	end

	def new

	end

	def create

	end

	def show

	end

	def edit
		
	end

	def update

	end

	def destroy

	end

private

	def set_inquiry
		@inquiry = Inquiry.find(params[:id])
	end

	def inquiry_params
		params.require(:inquiry).permit(:first_name, :last_name, :email, :phone, :city_of_interest, :state, :zip, :reason, :networth, :liquidity)
	end
end

