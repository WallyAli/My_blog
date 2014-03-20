require "spec_helper"

describe User do

	it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should respond_to(:first_name)}
    it { should respond_to(:last_name)}

    it "is invalid without a email" do 
    	user = User.new
    	user.should_not be_valid
    end

end





