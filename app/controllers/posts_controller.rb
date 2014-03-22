class PostsController < ApplicationController
	before_action :get_post, only: [:edit, :update, :delete, :destroy, :show]

	def index
		@posts = Post.all
		respond_to do |format|
    		format.html
    		format.json { render json: @posts }
    	end
	end

	def show
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
	end

	def update
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
	end

	def destroy
		@post.destroy
		respond_to do |format|
      		format.html { redirect_to posts_path }
      		format.json { head :no_content }
		end
	end

	def get_post
		@post = Post.find(params[:id])
	end


	private

	def post_params
    	params.require(:post).permit(:title, :content)
	end

end
