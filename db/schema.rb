# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151210095702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxer_profiles", force: :cascade do |t|
    t.text     "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "boxer_profiles", ["gender"], name: "index_boxer_profiles_on_gender", using: :btree

  create_table "companies", force: :cascade do |t|
    t.text     "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.json     "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "id_without_index"
    t.integer  "company_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id", using: :btree

  create_table "page_view_log_with_indices", force: :cascade do |t|
    t.datetime "viewed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "page_view_log_with_indices", ["viewed_at"], name: "index_page_view_log_with_indices_on_viewed_at", using: :btree

  create_table "page_view_logs", force: :cascade do |t|
    t.datetime "viewed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "email"
    t.text     "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["email"], name: "index_profiles_on_email", using: :btree
  add_index "profiles", ["gender"], name: "index_profiles_on_gender", using: :btree
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "profiles_with_indexes_on_expressions", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles_with_indexes_on_expressions", ["user_id"], name: "index_profiles_with_indexes_on_expressions_on_user_id", using: :btree

  create_table "tourist_spot_without_multiple_indices", force: :cascade do |t|
    t.text     "name"
    t.text     "country"
    t.text     "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tourist_spot_without_multiple_indices", ["city"], name: "index_tourist_spot_without_multiple_indices_on_city", using: :btree
  add_index "tourist_spot_without_multiple_indices", ["country"], name: "index_tourist_spot_without_multiple_indices_on_country", using: :btree

  create_table "tourist_spots", force: :cascade do |t|
    t.text     "name"
    t.text     "country"
    t.text     "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tourist_spots", ["city"], name: "index_tourist_spots_on_city", using: :btree
  add_index "tourist_spots", ["country", "city"], name: "index_tourist_spots_on_country_and_city", using: :btree

  create_table "users", force: :cascade do |t|
    t.boolean  "registered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["registered"], name: "index_users_on_registered", using: :btree

end
