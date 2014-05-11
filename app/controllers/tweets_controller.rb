class TweetsController < ApplicationController
	include TweetsHelper

  def index
  	@tweets = user_timeline(2)
  end
end
