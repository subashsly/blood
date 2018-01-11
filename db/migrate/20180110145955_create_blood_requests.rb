class CreateBloodRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :blood_requests do |t|
      t.string :patient_name
      t.integer :blood_group
      t.string :hospital_name
      t.string :city
      t.string :address
      t.string :contact_name
      t.string :email
      t.string :phone
      t.datetime :required_date

      t.timestamps
    end
  end
end
