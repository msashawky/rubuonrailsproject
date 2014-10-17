class UserDataController < ApplicationController
  before_action :set_user_datum, only: [:show, :edit, :update, :destroy]

  # GET /user_data
  # GET /user_data.json
  def index
    @user_data = UserDatum.all
  end

  # GET /user_data/1
  # GET /user_data/1.json
  def show
  end

  # GET /user_data/new
  def new
    @user_datum = UserDatum.new
  end

  # GET /user_data/1/edit
  def edit
  end

  # POST /user_data
  # POST /user_data.json
  def create
    @user_datum = UserDatum.new(user_datum_params)

    respond_to do |format|
      if @user_datum.save
        format.html { redirect_to @user_datum, notice: 'User datum was successfully created.' }
        format.json { render :show, status: :created, location: @user_datum }
      else
        format.html { render :new }
        format.json { render json: @user_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_data/1
  # PATCH/PUT /user_data/1.json
  def update
    respond_to do |format|
      if @user_datum.update(user_datum_params)
        format.html { redirect_to @user_datum, notice: 'User datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_datum }
      else
        format.html { render :edit }
        format.json { render json: @user_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_data/1
  # DELETE /user_data/1.json
  def destroy
    @user_datum.destroy
    respond_to do |format|
      format.html { redirect_to user_data_url, notice: 'User datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_datum
      @user_datum = UserDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_datum_params
      params.require(:user_datum).permit(:first_name, :last_name, :email, :phone_number, :username, :password, :gender)
    end

  def log_in
  end

  def sign_up
  end

  def log_out
  end

  def search
  end  
end
