class CheckoutsController < ApplicationController
	before_action :authenticate_user!

  layout "index"
  

  before_action :set_checkout, only: [:show, :edit, :update, :destroy]

  # GET /checkouts
  # GET /checkouts.json
  def index
    @checkouts = Checkout.all
  end


  # GET /checkouts/new
  def new
    @checkout = Checkout.new
  end

  # GET /checkouts/1/edit
  def edit
  end

  # POST /checkouts
  # POST /checkouts.json
  def create
    @checkout = Checkout.new(checkout_params)

    respond_to do |format|
      if @checkout.save
        format.html { redirect_to "/", notice: 'Checkout was successfully done.' }
        format.json { render :products, status: :created, location: @checkout }
      else
        format.html { render :new }
        format.json { render json: @checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkouts/1
  # DELETE /checkouts/1.json
  def destroy
    @checkout.destroy
    respond_to do |format|
      format.html { redirect_to checkouts_url, notice: 'Checkout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def checkout_params

      params.require(:checkout).permit(:name, :phone_number, :product_id)
    end
end
