require "spec_helper"

describe "Creating a new post" do 

	it "saves the post and shows the new post's details" do
		visit root_path
		click_link 'New'
		expect(current_path).to eq(new_post_path)
		
		fill_in 'Title', with: post_attributes[:title]
		fill_in 'Content', with: post_attributes[:content]

		click_button 'Submit'
		expect(current_path).to eq(post_path(Post.last))
		expect(page).to have_text("My Article")

	end
end