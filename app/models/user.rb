class User < ApplicationRecord

	has_many :notifications
	has_many :blood_donates
	enum gender: { male: 0, female: 1 } 
	enum blood_group: { "O-ve" => 0,"O+ve" => 1,"A+ve" => 2,"A-ve" => 3,"B+ve" => 4,"B-ve" => 5,"AB+ve" => 6,"AB-ve" => 7, } 
	validates :email, :first_name, :last_name, :phone_no, :gender, :address, :city,  :blood_group, :weight, presence: true
  	

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

          # validates :email, presence: true, length: { maximum: 10 }

end
