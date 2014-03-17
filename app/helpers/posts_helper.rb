module PostsHelper
	ActionView::Helpers::UrlHelper
	require 'rinku'

	def parse_urls(text)	
		simple_format(Rinku.auto_link(text))
	end

end