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
		if @inquiry.save
			redirect_to main_path
		else
			render :new
		end
	end

	def show

	end

	def edit
		
	end

	def update
		if @inquiry.update(inquiry_params)
			redirect_to inquiry_path(@inquiry)
		else
			render :edit
		end
	end

	def destroy
		@inquiry.destroy
		redirect_to inquiries_path
	end

private

	def set_inquiry
		@inquiry = Inquiry.find(params[:id])
	end

	def inquiry_params
		params.require(:inquiry).permit(:first_name, :last_name, :email, :phone, :city_of_interest, :state, :zip, :reason, :networth, :liquidity, :notes)
	end
end

