FactoryGirl.define do
  factory :user do
	    email "alix0100@umn.edu"
	    password "mysecret" 
	    password_confirmation { "mysecret" }
	end
end