class CreateBloodDonates < ActiveRecord::Migration[5.1]
  def change
    create_table :blood_donates do |t|
      t.references :user, foreign_key: true
      t.references :blood_request, foreign_key: true
      t.datetime :donate_date

      t.timestamps
    end
  end
end
