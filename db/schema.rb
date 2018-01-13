# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180113074738) do

  create_table "blood_donates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "blood_request_id"
    t.datetime "donate_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blood_request_id"], name: "index_blood_donates_on_blood_request_id"
    t.index ["user_id"], name: "index_blood_donates_on_user_id"
  end

  create_table "blood_requests", force: :cascade do |t|
    t.string "patient_name"
    t.integer "blood_group"
    t.string "hospital_name"
    t.string "city"
    t.string "address"
    t.string "contact_name"
    t.string "email"
    t.string "phone"
    t.datetime "required_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "user_queries", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "phone_no"
    t.string "address"
    t.integer "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.string "phone_no"
    t.string "telephone_no"
    t.date "date_of_birth"
    t.string "address"
    t.string "city"
    t.float "weight"
    t.float "height"
    t.integer "blood_group"
    t.integer "times_donate"
    t.string "zip_code"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
