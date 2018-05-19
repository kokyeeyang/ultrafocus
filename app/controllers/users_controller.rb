class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def show 
		@user = User.find_by_id(params[:id])
		# && admin_authorize
	end

	def edit 
		@user = User.find_by_id(params[:id])
	end

	def create 
		@user = User.new(allowed_params)
		if params[:password] == params[:password_confirmation]
			@user.password=(params[:password])
		end 

		if @user.save
			redirect_to lists_path, notice: "Thank you for signing up!"
		else 
			flash[:alert] = "something went wrong"
			redirect_to root_path
		end 
	end

	private
	def allowed_params
		params.require(:user).permit(:email, :password, :password_confirmation, :role)
	end


end
