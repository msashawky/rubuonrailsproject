class HomeController < ApplicationController
	def index
		# if user_signed_in?
		# 	redirect_to :controller=>'profile', :action =>'index'
		# end
		@ngos=Ngo.where(active_ngo: true).last(3)
		@product_category = ProductCategory.all
		@products = Product.all
		
	end
end
	#layout"index"
