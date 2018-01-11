json.extract! user_query, :id, :full_name, :email, :phone_no, :address, :subject, :message, :created_at, :updated_at
json.url user_query_url(user_query, format: :json)
