class ProductsController < ApplicationController
before_action :authenticate_user!

  layout "index"
  

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
     @product_picture = ProductPicture.all
    @comments = @product.comments.all
    @comment = @product.comments.build
  end



  # GET /products/new
  def new
    @category =ProductCategory.all
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      
      if @product.save

          if params[:images]&&params[:images].length < 4

                  
            #===== The magic is here ;)
            params[:images].each { |image|
              @product.product_pictures.create(image: image)

            }
          
          else         
        @product.errors.add(:images, 'You Can not add more than 4 images')
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
          end
        format.html { redirect_to @product }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params

      params.require(:product).permit(:product_name, :product_price, :product_count, :product_description,:photo).merge(:product_categories_id => params[:product_categories_id][:id])
    end

  def add_product
  end

  def remove_product
  end

  def promote_product
  end

  def report_product
  end

  def suspend_product
  end


end
