class PostsController < ApplicationController

	def index
		@posts = Post.search(params[:search])
		respond_to do |format|
    		format.html
    		format.json { render json: @posts }
    	end
	end

	def show
    	@post = Post.find(params[:id])
    	respond_to do |format|
    		format.html
    		format.json { render json: @post }
    	end
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		respond_to do |format|
			if @post.save
				format.html { redirect_to @post, notice: "Post successfully created!" }
	        	format.json { render action: 'show', status: :created, location: @post }
			else
				format.html { render action: 'new' }
		        format.json { render json: @post.errors, status: :unprocessable_entity }
			end
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		respond_to do |format|
			if  format.html { redirect_to @post, notice: 'Post was successfully updated.' }
		        format.json { head :no_content }
			else
				format.html { render :edit }
	        	format.json { render json: @post.errors, status: :unprocessable_entity }
			end
		end
	end

	def delete
		@post = Post.find(params[:id])
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		respond_to do |format|
      		format.html { redirect_to posts_path }
      		format.json { head :no_content }
		end
	end


	private

	def post_params
    	params.require(:post).permit(:title, :content)
	end

end
