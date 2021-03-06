class ProductCategoriesController < ApplicationController
  before_action :set_product_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /product_categories
  # GET /product_categories.json
  def index
    #if current_user.admin 
    @product_categories = ProductCategory.all
  #end
  end

  # GET /product_categories/1
  # GET /product_categories/1.json
  def show
  end

  # GET /product_categories/new
  def new
    # if current_user.admin 
    @product_category = ProductCategory.new
   # redirect_to :controller => 'product_categories' , :action =>'index' 
  #end
  end

  # GET /product_categories/1/edit
  def edit
  end

  # POST /product_categories
  # POST /product_categories.json
  def create
   #  if current_user.admin 
    @product_category = ProductCategory.new(product_category_params)

    respond_to do |format|
      if @product_category.save
        # redirect_to :controller => "product_categories", :action => "index"
        format.html { redirect_to @product_category, notice: 'Product category was successfully created.' }
        #format.json { render :show, status: :created, location: @product_category }
            

      else
        format.html { render :new }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
      end
    #end
    end
    

    
    
  end

  # PATCH/PUT /product_categories/1
  # PATCH/PUT /product_categories/1.json

 

  def update
     #if current_user.admin 
    respond_to do |format|
      if @product_category.update(product_category_params)
        format.html { redirect_to @product_category, notice: 'Product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_category }
      else
        format.html { render :edit }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
      end
    end
  #end
  end

  # DELETE /product_categories/1
  # DELETE /product_categories/1.json
  def destroy
   #  if current_user.admin 
    @product_category.destroy
    respond_to do |format|
      format.html { redirect_to product_categories_url, notice: 'Product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category
      @product_category = ProductCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_category_params
      params.require(:product_category).permit(:category_name)
    end

    def add_category
    end
end
