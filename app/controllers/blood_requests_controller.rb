class BloodRequestsController < ApplicationController
  before_action :set_blood_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]
  before_action :is_admin, except: [:new, :create, :index]
  # GET /blood_requests
  # GET /blood_requests.json
  def index
    @blood_requests = BloodRequest.all
  end

  # GET /blood_requests/1
  # GET /blood_requests/1.json
  def show
  end

  # GET /blood_requests/new
  def new
    @blood_request = BloodRequest.new
  end

  # GET /blood_requests/1/edit
  def edit
  end

  # POST /blood_requests
  # POST /blood_requests.json
  def create
    @blood_request = BloodRequest.new(blood_request_params)

    respond_to do |format|
      if @blood_request.save
        format.js {  flash[:notice] = "Thanks for your request. We will contact you soon."}
        format.html { redirect_to @blood_request, notice: 'Blood request was successfully created.' }
        format.json { render :show, status: :created, location: @blood_request }
      else
        format.js {  flash[:notice] = "Request failed, Please try again."}
        format.html { render :new }
        format.json { render json: @blood_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_requests/1
  # PATCH/PUT /blood_requests/1.json
  def update
    respond_to do |format|
      if @blood_request.update(blood_request_params)
        format.html { redirect_to @blood_request, notice: 'Blood request was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_request }
      else
        format.html { render :edit }
        format.json { render json: @blood_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_requests/1
  # DELETE /blood_requests/1.json
  def destroy
    @blood_request.destroy
    respond_to do |format|
      format.html { redirect_to blood_requests_url, notice: 'Blood request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_request
      @blood_request = BloodRequest.find(params[:id])
    end

      


    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_request_params
      params.require(:blood_request).permit(:patient_name, :blood_group, :hospital_name, :city, :address, :contact_name, :email, :phone, :required_date)
    end
end
