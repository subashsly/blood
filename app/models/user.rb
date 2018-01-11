class User < ApplicationRecord

	has_many :notifications
	has_many :blood_donates
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

          # validates :email, presence: true, length: { maximum: 10 }

end
