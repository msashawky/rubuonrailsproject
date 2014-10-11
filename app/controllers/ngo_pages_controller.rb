class NgoPagesController < ApplicationController
  before_action :set_ngo_page, only: [:show, :edit, :update, :destroy]

  # GET /ngo_pages
  # GET /ngo_pages.json
  def index
    @ngo_pages = NgoPage.all
  end

  # GET /ngo_pages/1
  # GET /ngo_pages/1.json
  def show
  end

  # GET /ngo_pages/new
  def new
    @ngo_page = NgoPage.new
  end

  # GET /ngo_pages/1/edit
  

  # POST /ngo_pages
  # POST /ngo_pages.json
  def create
    @ngo_page = NgoPage.new(ngo_page_params)

    respond_to do |format|
      if @ngo_page.save
        format.html { redirect_to @ngo_page, notice: 'Ngo page was successfully created.' }
        format.json { render :show, status: :created, location: @ngo_page }
      else
        format.html { render :new }
        format.json { render json: @ngo_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ngo_pages/1
  # PATCH/PUT /ngo_pages/1.json

  # DELETE /ngo_pages/1
  # DELETE /ngo_pages/1.json
  def destroy
    @ngo_page.destroy
    respond_to do |format|
      format.html { redirect_to ngo_pages_url, notice: 'Ngo page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ngo_page
      @ngo_page = NgoPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ngo_page_params
      params.require(:ngo_page).permit(:name, :license_number, :description, :email, :address, :image)
    end
end
