module ApplicationHelper
	ActionView::Helpers::UrlHelper

	require 'rss'
	require 'open-uri'

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
end
	