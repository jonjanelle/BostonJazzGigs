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

ActiveRecord::Schema.define(version: 20171029163841) do

  create_table "band_requests", force: :cascade do |t|
    t.string "first", limit: 50, null: false
    t.string "last", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.string "phone", limit: 20
    t.string "preferred_contact"
    t.string "date", null: false
    t.string "time"
    t.string "address"
    t.string "city", null: false
    t.string "state", null: false
    t.decimal "hours"
    t.integer "bandsize"
    t.string "instrument_wanted"
    t.text "description", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_messages", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone"
    t.text "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_profiles", force: :cascade do |t|
    t.string "subtitle"
    t.string "mission_title"
    t.string "mission_subtitle"
    t.string "mission_description"
    t.string "for_planners_title1"
    t.string "for_planners_description1"
    t.string "for_planners_title2"
    t.string "for_planners_description2"
    t.string "for_musicians_title1"
    t.string "for_musicians_description1"
    t.string "booking_title"
    t.string "booking_description"
    t.string "find_band_title"
    t.string "musician_looking_title"
    t.string "demos_title"
    t.string "demos_subtitle"
    t.string "demos_description"
    t.string "contact_title"
    t.string "contact_description"
    t.string "profile_name"
  end

  create_table "musician_requests", force: :cascade do |t|
    t.string "first", limit: 50, null: false
    t.string "last", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.string "phone", limit: 20
    t.string "preferred_contact"
    t.string "address"
    t.string "city", null: false
    t.string "state", null: false
    t.integer "travel_radius"
    t.string "primary_instrument", null: false
    t.string "secondary_instrument"
    t.text "experience", null: false
    t.text "availability", null: false
    t.text "additional_info"
    t.string "status"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role_type", default: "user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
