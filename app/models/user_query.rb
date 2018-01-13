class UserQuery < ApplicationRecord
	validates :full_name, :phone_no, :message, :address, presence: true
	enum subject: { Helpline: 0, Marketing: 1, Others: 2 } 
end
