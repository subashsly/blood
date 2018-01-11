json.extract! blood_request, :id, :patient_name, :blood_group, :hospital_name, :city, :address, :contact_name, :email, :phone, :required_date, :created_at, :updated_at
json.url blood_request_url(blood_request, format: :json)
