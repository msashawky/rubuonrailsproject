class HomeController < ApplicationController
	def index
		if user_signed_in?
			redirect_to :controller=>'profile', :action =>'index'
		end
	end
end
	#layout"index"
