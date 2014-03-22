require 'spec_helper'
require 'factory_girl'

describe Post do
	
	it "has a valid factory" do 
		expect(build(:post)).to be_valid 
	end

	it 'is invalid without a title' do 
		post = build(:post, title: nil)
		expect(post).to have(1).errors_on(:title)
	end

	it 'is invalid without a content' do 
		post = build(:post, content: nil)
		expect(post).to have(1).errors_on(:content)
	end

	it "count increases by 1 when a new post is created" do 
		post = build(:post)
		expect { post.save }.to change { Post.count }.by(1) 
	end

	it "count decreases by 1 when a post is deleted" 

	it { should respond_to (:title) }

	it { should respond_to(:content) }

end