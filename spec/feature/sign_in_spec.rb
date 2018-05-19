require "rails_helper"

feature "Sign in" do 

user = User.create(email: 'kokyeeyang1994@gmail.com', password: 'whatabadpassword')
	scenario "User tries to sign in" do 
		visit "/sign_in"
		fill_in "email", with: "kokyeeyang1994@gmail.com"
		fill_in "password", with: "whatabadpassword"
		click_button "Sign In"
		expect(page).to have_text "Welcome back!"
	end
end
