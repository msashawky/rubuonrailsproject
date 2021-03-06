class NgosController < ApplicationController
layout "index"
before_action :authenticate_user!, only: :new 
  before_action :set_ngo, only: [:show, :edit, :update, :destroy ,:approve ,:disapprove ]

  # GET /ngos
  # GET /ngos.json
  def index
     
      
       @ngos=Ngo.where(active_ngo: true).paginate(:page => params[:page], :per_page => 10)
     
  end

  # GET /ngos/1
  # GET /ngos/1.json
  def show
  end

  # GET /ngos/new
  def new
    @ngo = Ngo.new
  end

  # GET /ngos/1/edit
  def edit
  end

  # POST /ngos
  # POST /ngos.json
  def create
    @ngo = Ngo.new(ngo_params ,active_ngo: false , wait_approve: true )

    respond_to do |format|
      if @ngo.save
       AdminMail.welcome_email(@ngo).deliver
        format.html { redirect_to @ngo, notice: 'Ngo was successfully created,Waiting admin approval' }
        format.json { render :show, status: :created, location: @ngo }
         @user= User.find( current_user.id )
         @user.update(ngo_id: @ngo.id )
      else
        format.html { render :new }
        format.json { render json: @ngo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ngos/1
  # PATCH/PUT /ngos/1.json
  def update
    respond_to do |format|
      if @ngo.update(ngo_params ,active_ngo: true ,wait_approve: false )
        format.html { redirect_to @ngo, notice: 'Ngo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ngo }
      else
        format.html { render :edit }
        format.json { render json: @ngo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ngos/1
  # DELETE /ngos/1.json
  def destroy
    @ngo.destroy
    respond_to do |format|
      format.html { redirect_to ngos_url, notice: 'Ngo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def approve
    respond_to do |format|
      if @ngo.update(active_ngo: true , wait_approve: false )
        AdminMail.welcome_email(@ngo).deliver
        format.html { redirect_to @ngo, notice: 'Ngo was successfully approved.' }
        format.json { render :show, status: :ok, location: @ngo }
      else
        format.html { redirect_to @ngo, notice: 'You have an error.' }
        format.json { render :show, status: :ok, location: @ngo }
   
      end
    end
  end



  def disapprove
    
      respond_to do |format|
      if @ngo.update(active_ngo: false , wait_approve:false )
         AdminMail.welcome_email(@ngo).deliver
        format.html { redirect_to @ngo, notice: 'Ngo was successfully disapproved.' }
        format.json { render :show, status: :ok, location: @ngo }
      else
        format.html { redirect_to @ngo, notice: 'You have an error.' }
        format.json { render :show, status: :ok, location: @ngo }
      
      end
    end
  end

    # Add admin to NGO
  def add_admin
      @email = :email
      User.invite!(:email => @email, :ngo => current_user.ngo)
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ngo
      @ngo = Ngo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ngo_params
      params.require(:ngo).permit(:NGO_name, :bank_account, :NGO_number, :website, :ZIP_code, :phone_number, :fb_link, :tw_link, :gp_link, :country, :city, :street,:description , :email , :image )
    end

end
