class HomeController < ApplicationController
	def index
		# if user_signed_in?
		# 	redirect_to :controller=>'profile', :action =>'index'
		# end
		@ngos=Ngo.where(active_ngo: true).last(3)
		@product_category = ProductCategory.all
		#@products = Product.all


		#Product_view .take(2)
		#@product = Product.where(product_name: true).last(3)
           @products = Product.last(3)
		#Project_view
		@projects = Project.last(3)
		

	end
end
