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

ActiveRecord::Schema.define(version: 20170812192033) do

  create_table "band_requests", force: :cascade do |t|
    t.string "first", limit: 50, null: false
    t.string "last", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.string "phone", limit: 20, null: false
    t.string "preferred_contact"
    t.string "date", null: false
    t.string "time"
    t.string "address"
    t.string "city", null: false
    t.string "state", null: false
    t.decimal "hours"
    t.integer "bandsize"
    t.string "instrument_wanted"
    t.text "description"
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

  create_table "musician_requests", force: :cascade do |t|
    t.string "first", limit: 50, null: false
    t.string "last", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.string "phone", limit: 20, null: false
    t.string "preferred_contact"
    t.string "address"
    t.string "city", null: false
    t.string "state", null: false
    t.integer "travel_radius"
    t.string "primary_instrument", null: false
    t.string "secondary_instrument"
    t.text "experience"
    t.text "availability"
    t.text "additional_info"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
