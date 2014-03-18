module PostsHelper
	ActionView::Helpers::UrlHelper

	def markdown(content)
		extensions = {
			hard_wrap: true, 
			filter_html: true, 
			autolink: true, 
			no_intraemphasis:true, 
			fenced_code_blocks: true,
			superscript: true
		}

		options = {
	      filter_html: true,
	      hard_wrap: true, 
	      space_after_headers: true, 
	      fenced_code_blocks: true,
	      prettify: true
	  }
		renderer = Redcarpet::Render::HTML.new(options)
		markdown = Redcarpet::Markdown.new(renderer, extensions)
		markdown.render(content)
	end

end
