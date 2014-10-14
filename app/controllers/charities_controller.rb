class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show]

  # GET /charities
  # GET /charities.json
  def index
    @charities = Charity.all
  end

  # GET /charities/1
  # GET /charities/1.json
  def show
  end

  # GET /charities/new
  def new
    @charity = Charity.new
  end

  # GET /charities/1/edit
 

  # POST /charities
  # POST /charities.json
  def create
    @charity = Charity.new(charity_params)

    respond_to do |format|
      if @charity.save
        format.html { redirect_to @charity, notice: 'Charity was successfully created.' }
        format.json { render :show, status: :created, location: @charity }
      else
        format.html { render :new }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charities/1
  # PATCH/PUT /charities/1.json


  # DELETE /charities/1
  # DELETE /charities/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_params
      params.require(:charity).permit(:charity_field)
    end
end
