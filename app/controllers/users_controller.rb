class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		redirect_to documents_path
	end

	def new
 		@user = User.new 
	end

	def create
		@user = User.new(user_params)
		if @user.save
			log_in @user	
			flash[:success] = "Welcome to Eng Share!"
#			redirect_to @user
			redirect_to documents_path
		else
			render 'new'
		end
	end

	private
		
		def user_params
			params.require(:user).permit(:name, :email, :password,																										:password_confirmation)
		end

end
