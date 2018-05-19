class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  # private

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id] 
	end
	
	helper_method :current_user

	def signed_in?
		current_user.present?
	end 

	def authorize
		redirect_to '/signin' unless current_user
	end

	def admin_authorize
		redirect_to_new_sessions_path
		flash[:alert] =  "Only for Admin!" unless current_user.role == "admin"
	end
	# helper_method :signed_in?
end