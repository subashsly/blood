class BloodDonate < ApplicationRecord
  belongs_to :user
  belongs_to :blood_request
end
