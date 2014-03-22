require 'faker'

FactoryGirl.define do 
	factory :post do 
		title { Faker::Lorem.sentence } 
		content { Faker::Lorem.paragraph }
	end

	factory :invalid_post_title do
		title nil
	end

	factory :invalid_post_content do
		title nil
	end 
end 