module ApplicationHelper

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
end
