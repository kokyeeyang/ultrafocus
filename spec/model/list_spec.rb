require "rails_helper"

RSpec.describe List, type: :model do 

list = List.create(title: 'Groceries', task1: 'buy eggs')
	it { should belong_to(:user)}
	it "should search for title" do
		result = List.title("Groceries")
		expect{(result).to eq([list])}
	end
end



