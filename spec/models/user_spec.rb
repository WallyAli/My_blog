require 'spec_helper'

describe User do

	it "requires title" do
		post = Post.new(title: '')

		expect(post.errors[:title].any?).to be_true
	end
end
