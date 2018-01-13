class ApplicationController < ActionController::Base

   protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
	
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_no, :telephone_no, :gender, :address, :city, :date_of_birth, :blood_group, :height, :weight, :zip_code, :times_donate])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_no, :telephone_no, :gender, :address, :city, :date_of_birth, :blood_group, :height, :weight, :zip_code, :times_donate])
   end




end


