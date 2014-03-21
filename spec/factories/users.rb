require 'faker'

FactoryGirl.define do 
	factory :user do 
		first_name { Faker::Name.first_name } 
		last_name { Faker::Name.first_name }
		email { Faker::Internet.email }
		password "mysecretpassword"
	end 
end 
