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

ActiveRecord::Schema.define(version: 20171017161948) do

  create_table "landslide_images", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "landslide_id"
    t.index ["landslide_id"], name: "index_landslide_images_on_landslide_id"
  end

  create_table "landslides", force: :cascade do |t|
    t.string   "hazard_type"
    t.integer  "injuries"
    t.string   "landslide_size"
    t.string   "landslide_type"
    t.decimal  "latitude"
    t.string   "location_accuracy"
    t.string   "location_description"
    t.decimal  "longitude"
    t.string   "near"
    t.string   "nearest_places"
    t.string   "trigger"
    t.string   "source_name"
    t.integer  "fatalities"
    t.integer  "user_id"
    t.string   "countryname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "tstamp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "countrycode"
    t.string   "external_id"
    t.index ["external_id"], name: "index_landslides_on_external_id", unique: true
    t.string   "address"
    t.index ["user_id"], name: "index_landslides_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
