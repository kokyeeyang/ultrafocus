require "rails_helper"

RSpec.describe User, type: :model do
user = User.create(email: 'kokyeeyang1994@gmail.com')
it "should test for uniqueness and case insenstivity of email" do 
	result = User.create(email: 'kokyeeYANG1994@gmail.com')
	expect{(result).to be_false} 
end
	it { should define_enum_for(:role)}
	it { should have_many(:lists)}
	it { should validate_presence_of(:email)}
end 