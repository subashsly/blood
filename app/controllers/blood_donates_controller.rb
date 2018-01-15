class BloodDonatesController < ApplicationController
  before_action :set_blood_donate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :is_admin, except: [:index]
  # GET /blood_donates
  # GET /blood_donates.json
  def index
    @blood_donates = BloodDonate.all
  end

  # GET /blood_donates/1
  # GET /blood_donates/1.json
  def show
  end

  # GET /blood_donates/new
  def new
    @blood_donate = BloodDonate.new
  end

  # GET /blood_donates/1/edit
  def edit
  end

  # POST /blood_donates
  # POST /blood_donates.json
  def create
    @blood_donate = BloodDonate.new(blood_donate_params)

    respond_to do |format|
      if @blood_donate.save
        format.html { redirect_to @blood_donate, notice: 'Blood donate was successfully created.' }
        format.json { render :show, status: :created, location: @blood_donate }
      else
        format.html { render :new }
        format.json { render json: @blood_donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_donates/1
  # PATCH/PUT /blood_donates/1.json
  def update
    respond_to do |format|
      if @blood_donate.update(blood_donate_params)
        format.html { redirect_to @blood_donate, notice: 'Blood donate was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_donate }
      else
        format.html { render :edit }
        format.json { render json: @blood_donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_donates/1
  # DELETE /blood_donates/1.json
  def destroy
    @blood_donate.destroy
    respond_to do |format|
      format.html { redirect_to blood_donates_url, notice: 'Blood donate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
   

    # Use callbacks to share common setup or constraints between actions.
    def set_blood_donate
      @blood_donate = BloodDonate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_donate_params
      params.require(:blood_donate).permit(:user_id, :blood_request_id, :donate_date)
    end
end
