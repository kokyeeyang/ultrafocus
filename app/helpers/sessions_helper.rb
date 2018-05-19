module SessionsHelper
	def sign_in(user)
		session[:user_id] = user.id 
	end

	def current_user
		if (user_id = session[:user_id])
  		@current_user ||= User.find_by(id: user_id)
			user = User.find_by_id(@current_user.id)
			sign_in user
  		@current_user = user
  	end
	end

	def signed_in?
		!current_user.nil?
	end
  
	def sign_out
		session.delete(:user_id)
		@current_user = nil
	end
end
