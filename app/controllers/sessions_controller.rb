class SessionsController < ApplicationController
	def new
		@users = User.all
	end

	def create
		user = User.find_by(email: params[:login][:email])
		if user && user.authenticate(params[:login][:password])
			session[:user_id] = user.id.to_s
			redirect_to user_path(user)
		else
			render :new
			flash[:error] = "There was a problem. Please try again."
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end
end
