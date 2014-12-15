class HomeController < ApplicationController
	def index
		# if user_signed_in?
		# 	redirect_to :controller=>'profile', :action =>'index'
		# end
		@product_category = ProductCategory.all
		@products = Product.all



		@product_view = Product.where(product_name: true).last(3)
		
		#Pagination Query

	end
end
