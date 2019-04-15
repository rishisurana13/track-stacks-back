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

ActiveRecord::Schema.define(version: 2019_04_15_021500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_accounts_on_day_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "days", force: :cascade do |t|
    t.string "today"
    t.date "date"
    t.integer "spend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_days_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "meal"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "meals_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["meals_id"], name: "index_users_on_meals_id"
    t.index ["token"], name: "index_users_on_token", unique: true
    t.index ["user_id"], name: "index_users_on_user_id"
  end

  add_foreign_key "accounts", "days"
  add_foreign_key "accounts", "users"
  add_foreign_key "days", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "meals", "users"
  add_foreign_key "users", "meals", column: "meals_id"
  add_foreign_key "users", "users"
end
