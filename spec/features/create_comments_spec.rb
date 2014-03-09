require 'spec_helper'

describe "Creating a comment" do 

	it "saves the comment" do 
		post = Post.create(post_attributes)
		visit post_path(post)

		fill_in "Commenter", with: 'Wali'
		fill_in "Body", with: 'I love this article'

		click_button "Create Comment"

		expect(current_path).to eq(post_path(post))
		expect(page).to have_text(post.comments.last.body)
		expect(page).to have_text(post.comments.last.commenter)
	end
end