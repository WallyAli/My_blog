require "spec_helper"

describe "Creating a new post" do 

	it "saves the post and shows the new post's details" do
		visit root_path
		click_link 'New'

		fill_in "title", :with => "First Tested Article"
		fill_in "Content", :with => "Magna mollit enim, 
		trust fund officia elit American Apparel
		 XOXO PBR&B polaroid. Pour-over nesciunt bespoke, 
		 bicycle rights ex officia small batch iPhone kogi quis 
		 Brooklyn tote bag biodiesel cardigan synth. 
		 Banksy cred forage Austin, semiotics VHS velit gluten-free 
		 American Apparel magna next level. Butcher synth elit, 
		 kogi fanny pack hoodie veniam laborum mustache. "

		 click_button 'Create Post'
		 expect(current_path).to eq(post_path(Post.last))
		 expect(page).to have_text("First Tested Article")

	end
end