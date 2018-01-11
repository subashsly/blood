class CreateUserQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :user_queries do |t|
      t.string :full_name
      t.string :email
      t.string :phone_no
      t.string :address
      t.integer :subject
      t.text :message

      t.timestamps
    end
  end
end
