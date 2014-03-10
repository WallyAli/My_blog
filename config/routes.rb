Blog::Application.routes.draw do

  	devise_for :users

	devise_scope :user do
	  get "register", to: "devise/registrations#new"
	  get "login", to: "devise/sessions#new"
	  get "logout", to: "devise/sessions#destroy"
	end

	resources :posts do
	  resources :comments
	end

	root "posts#index"

end
