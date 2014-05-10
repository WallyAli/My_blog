module ApplicationHelper
	ActionView::Helpers::UrlHelper

	require 'rss'
	require 'open-uri'
	require 'twitter'

	@client = Twitter::REST::Client.new do |config|
	  config.consumer_key    = ENV["CONSUMER_KEY"]
	  config.consumer_secret = ENV["CONSUMER_SECRET"]
	  config.access_token        = ENV["ACCESS_TOKEN"]
	  config.access_token_secret = ENV["ACCESS_SECRET"]
	end
	
	def gravatar_for(user)
		gravatar_id = Digest::MD5.hexdigest(user)
	    "http://gravatar.com/avatar/#{gravatar_id}.png"
	end

	def flash_class (type)
		case type
		when :notice
			"alert-success"
		when :alert
			"alert-error"
		else
			""
		end
	end

	def blog_feed
		url = "http://feeds.mashable.com/mashable/tech"
		rss = RSS::Parser.parse(url, false)
		link_to rss.items.first.title, rss.items.first.link 
	end

	def login(user)
		if  user_signed_in?
			link_to 'Logout', logout_path 
		else
			link_to 'Login', login_path 
		end 
	end

	def edit_profile(user)
		link_to 'Edit Profile', edit_user_registration_path if user_signed_in?
	end
end

	