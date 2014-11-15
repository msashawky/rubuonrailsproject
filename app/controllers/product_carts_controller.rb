class ProductCartsController < ApplicationController
  include CartsHelper
  layout "index"
  before_action :authenticate_user!
  before_action :set_product_cart, only: [:show, :edit, :update, :destroy]

  # GET /product_carts
  # GET /product_carts.json
  def index
    @carts=Cart.all
    @product_carts = ProductCart.all
    @products=Product.all 
  end

  # GET /product_carts/1
  # GET /product_carts/1.json
  def show
  end

  # GET /product_carts/new
  def new
    @product_cart = ProductCart.new
  end

  # GET /product_carts/1/edit
  def edit
  end

  # POST /product_carts
  # POST /product_carts.json
  def create
    @product_cart = ProductCart.new(product_cart_params)

    respond_to do |format|
      if @product_cart.save
        format.html { redirect_to @product_cart, notice: 'Product cart was successfully created.' }
        format.json { render :show, status: :created, location: @product_cart }
      else
        format.html { render :new }
        format.json { render json: @product_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_carts/1
  # PATCH/PUT /product_carts/1.json
  def update
    respond_to do |format|
      if @product_cart.update(product_cart_params)
        format.html { redirect_to @product_cart, notice: 'Product cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_cart }
      else
        format.html { render :edit }
        format.json { render json: @product_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_carts/1
  # DELETE /product_carts/1.json
  def destroy
    @product_cart.destroy
    respond_to do |format|
      format.html { redirect_to product_carts_url, notice: 'Product cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



      def add_to_cart 

          if !@carts=Cart.all
          @carts.each do |cart|
            if cart.registered_user_id==current_user.id
                @mycart=cart
            else
               @mycart=Cart.new
               @mycart.registered_user_id = current_user.id
             end
          end
        else
               @mycart=Cart.new
               @mycart.registered_user_id = current_user.id
end
          @product_cart = ProductCart.new
           @product_cart.cart_id=@mycart.id
          @product_cart.cart = @mycart
          @product_cart.product_id = params[:id]
          @product_cart.product_amount=1
          if  @product_cart.save!       
            redirect_to("/products")
          else
            render "new"
          end           
      end        
       




      def empty_cart
        @carts=Cart.all
        @product_carts=ProductCart.all
        @carts.each do |cart|
          if cart.registered_user_id==current_user.id
            @current_user_cart=cart.id
            break
          end
        end
        @product_carts.each do |product_cart|
          if product_cart.cart_id==@current_user_cart
             product_cart.destroy
          else
          end
               
            redirect_to("/product_carts")and return
          
    
        end 
      end

        


      

    
      



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_cart
      @product_cart = ProductCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_cart_params
      params.require(:product_cart).permit(:product_)
    end



    def cancel_product
    end
end










