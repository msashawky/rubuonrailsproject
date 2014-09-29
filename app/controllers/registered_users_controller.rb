class RegisteredUsersController < ApplicationController
  before_action :set_registered_user, only: [:show, :edit, :update, :destroy]

  # GET /registered_users
  # GET /registered_users.json
  def index
    @registered_users = RegisteredUser.all
  end

  # GET /registered_users/1
  # GET /registered_users/1.json
  def show
  end

  # GET /registered_users/new
  def new
    @registered_user = RegisteredUser.new
  end

  # GET /registered_users/1/edit
  def edit
  end

  # POST /registered_users
  # POST /registered_users.json
  def create
    @registered_user = RegisteredUser.new(registered_user_params)

    respond_to do |format|
      if @registered_user.save
        format.html { redirect_to @registered_user, notice: 'Registered user was successfully created.' }
        format.json { render :show, status: :created, location: @registered_user }
      else
        format.html { render :new }
        format.json { render json: @registered_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registered_users/1
  # PATCH/PUT /registered_users/1.json
  def update
    respond_to do |format|
      if @registered_user.update(registered_user_params)
        format.html { redirect_to @registered_user, notice: 'Registered user was successfully updated.' }
        format.json { render :show, status: :ok, location: @registered_user }
      else
        format.html { render :edit }
        format.json { render json: @registered_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registered_users/1
  # DELETE /registered_users/1.json
  def destroy
    @registered_user.destroy
    respond_to do |format|
      format.html { redirect_to registered_users_url, notice: 'Registered user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registered_user
      @registered_user = RegisteredUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registered_user_params
      params.require(:registered_user).permit(:card_number)
    end

  def pay_with_cash
  end

  def pay_with_visa
  end

  def view_history
  end

  def send_inquiries
  end
end
