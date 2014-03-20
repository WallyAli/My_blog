require 'spec_helper'

describe Post do 
	it 'requires a title' do 
		post = Post.new(title: '', content: 'article content')
		post.should_not be_valid
	end

	it 'requires content' do 
		post = Post.new(title: 'article title', content: '')
		post.should_not be_valid
	end

	it "count increases by 1 when a new post is created" do 
		post = Post.new(title: 'new article', content: 'article content')
		expect { post.save }.to change { Post.count }.by(1) 
	end

	it "count decreases by 1 when a post is deleted" do 
		post = Post.create!(title: 'new article', content: 'article content')
		
		expect { post.destroy }.to change { Post.count }.from(2).to(1) 
	end

	it "responds to title" do 
		subject.should respond_to(:title)
	end

	it { should respond_to(:content) }

end