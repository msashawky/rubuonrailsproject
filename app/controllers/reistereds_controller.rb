class ReisteredsController < ApplicationController
  before_action :set_reistered, only: [:show, :edit, :update, :destroy]

  # GET /reistereds
  # GET /reistereds.json
  def index
    @reistereds = Reistered.all
  end

  # GET /reistereds/1
  # GET /reistereds/1.json
  def show
  end

  # GET /reistereds/new
  def new
    @reistered = Reistered.new
  end

  # GET /reistereds/1/edit
  def edit
  end

  # POST /reistereds
  # POST /reistereds.json
  def create
    @reistered = Reistered.new(reistered_params)

    respond_to do |format|
      if @reistered.save
        format.html { redirect_to @reistered, notice: 'Reistered was successfully created.' }
        format.json { render :show, status: :created, location: @reistered }
      else
        format.html { render :new }
        format.json { render json: @reistered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reistereds/1
  # PATCH/PUT /reistereds/1.json
  def update
    respond_to do |format|
      if @reistered.update(reistered_params)
        format.html { redirect_to @reistered, notice: 'Reistered was successfully updated.' }
        format.json { render :show, status: :ok, location: @reistered }
      else
        format.html { render :edit }
        format.json { render json: @reistered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reistereds/1
  # DELETE /reistereds/1.json
  def destroy
    @reistered.destroy
    respond_to do |format|
      format.html { redirect_to reistereds_url, notice: 'Reistered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reistered
      @reistered = Reistered.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reistered_params
      params.require(:reistered).permit(:name, :user_name, :phone_number, :password, :gender)
    end
end
