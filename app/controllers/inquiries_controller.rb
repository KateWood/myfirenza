class InquiriesController < ApplicationController

	before_action :set_inquiry, only: [:show, :edit, :update, :destroy]

	def index
		@inquiries = Inquiry.all
	end

	def new
		@inquiry = Inquiry.new
	end

	def create
		@inquiry = Inquiry.new(inquiry_params)
		respond_to do |format|
			if @inquiry.save
				format.html { notice: 'Information was successfully submitted.' }
			else
				format.html { notice: 'Something went wrong.' }
			end
		end
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

