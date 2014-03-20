require "spec_helper"
require 'factory_girl'

describe User do

	it "has a valid factory" do 
		FactoryGirl.create(:user).should be_valid 
	end

	it "is invalid without a first name" do 
		FactoryGirl.build(:user, first_name: nil).should_not be_valid 
	end

	it "is invalid without a last name" do 
		FactoryGirl.build(:user, last_name: nil).should_not be_valid 
	end

	it "is invalid without a email" do 
		FactoryGirl.build(:user, email: nil).should_not be_valid 
	end

	it "returns users full name as a string" do 
		user = FactoryGirl.create(:user, first_name: 'Wali', last_name: 'Ali')
		user.full_name.should == 'Wali Ali'
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





