require "spec_helper"
require 'factory_girl'

describe User do

	it "has a valid factory" do 
		expect(build(:user)).to be_valid 
	end

	it "is valid with first_name, last_name, and email" do 
		user = build(:user)
		expect(user).to be_valid
	end

	it "is invalid without a first name" do
		user = build(:user, first_name: nil) 
		expect(user).to have(1).errors_on(:first_name) 
	end

	it "is invalid without a last name" do
		user = build(:user, last_name: nil) 
		expect(user).to have(1).errors_on(:last_name) 
	end

	it "is invalid without an email" do 
		user = build(:user, email: nil)
		expect(user).to have(1).errors_on(:email)
	end

	it "returns users full name as a string" do 
		user = build(:user, first_name: 'Wali', last_name: 'Ali')
		expect(user.full_name).to eq ('Wali Ali')
	end

	it "is invalid with duplicate email address" do 
		create(:user, email: 'abdish@gmail.com')
		user = build(:user, email: 'abdish@gmail.com')
		expect(user).to have(1).errors_on(:email)
	end 
	
	it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should respond_to(:first_name)}
    it { should respond_to(:last_name)}

    it "is invalid without a email" do 
    	user = User.new
    	user.should_not be_valid
    end

	it "email is 'abdishwak@gmail.com'" do 

	end    
end





