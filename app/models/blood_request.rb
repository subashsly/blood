class BloodRequest < ApplicationRecord
	has_one :blood_donate
	enum blood_group: { "O-ve" => 0,"O+ve" => 1,"A+ve" => 2,"A-ve" => 3,"B+ve" => 4,"B-ve" => 5,"AB+ve" => 6,"AB-ve" => 7, } 
end
