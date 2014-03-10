require 'spec_helper'

describe "Editing a post" do 

	it "edits a post and displays the edited post" do

		post = Post.create(post_attributes)

		visit post_path(post)
		click_link 'Edit'

		expect(current_path).to eq(edit_post_path(post))
		expect(find_field('Title').value).to eq(post.title)

		fill_in 'Title', with: 'Updated Post Title'
		click_button 'Update Post'
		expect(current_path).to eq(post_path(post))
		expect(page).to have_text('Updated Post Title')

	end
end