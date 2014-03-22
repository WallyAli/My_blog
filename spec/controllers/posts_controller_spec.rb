require "spec_helper"
require 'factory_girl'

describe PostsController do
	render_views

	describe 'GET#index' do 

		it 'renders the :index view' do
			get :index
			expect(response).to render_template :index 
		end
	end


	describe 'GET#show' do
		before :each do 
			@post = FactoryGirl.create(:post)
			get :show, id: @post
		end 

		it { response.should be_success }
		it { expect(response).to render_template :show } 
	end

	describe 'POST#create' do 

		context 'with valid attributes' do

			it 'redirects to the user sign in path' do 
				post :create, post: FactoryGirl.attributes_for(:post)
				expect(response).to redirect_to new_user_session_path
			end 
		end
	end
end

