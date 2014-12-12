class CheckoutsController < ApplicationController
  def index
    @checkouts = Checkout.all
  end
 
  def new
  	@checkout = Checkout.new
  end
 
  def create
  	@checkout = Checkout.new(comment_params)
  	if @checkout.save
  		redirect_to(:back)
  	else
  		render 'new'
  	end
  end

  def destroy
  	@checkout = Checkout.find(params[:id])
  	@checkout.destroy
  	redirect_to (:back)
  end

  private

  def checkout_params
  	params.require(:checkout).permit(:name, :phone_number, :address, :project_id)
  end
end
