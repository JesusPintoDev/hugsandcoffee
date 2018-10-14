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

ActiveRecord::Schema.define(version: 2018_10_14_190234) do

  create_table "accounts", force: :cascade do |t|
    t.integer "profile_id"
    t.string "entity"
    t.string "email"
    t.integer "account_number"
    t.string "rif_ci"
    t.string "account_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_accounts_on_profile_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "profile_id"
    t.string "url"
    t.string "description"
    t.boolean "show?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_images_on_profile_id"
  end

  create_table "multipliers", force: :cascade do |t|
    t.integer "profile_id"
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_multipliers_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "fullname"
    t.string "role"
    t.string "bio"
    t.decimal "coffee_price", precision: 10, scale: 2
    t.string "monetary_symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.integer "profile_id"
    t.string "fullname"
    t.string "role"
    t.string "message"
    t.boolean "appreciation"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_testimonials_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
