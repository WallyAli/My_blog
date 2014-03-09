require 'spec_helper'

describe "Deleting a post" do 

	it "deletes the post and shows the post listing without the deleted post" do 
		post = Post.create(post_attributes)

		visit post_path(post)

		click_link 'Delete'

		expect(current_path).to eq(posts_path)
		expect(page).not_to have_text(post.title)

	end
end