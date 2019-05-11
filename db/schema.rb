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

ActiveRecord::Schema.define(version: 2019_05_11_134822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adeapartments", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.decimal "price"
    t.string "description"
    t.string "image_url"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_adeapartments_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dreamscomputers", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.decimal "price"
    t.string "description"
    t.string "image_url"
    t.string "number"
    t.string "vendor"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_dreamscomputers_on_category_id"
  end

  create_table "marketplaces", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "description"
    t.string "vendor"
    t.string "image_url"
    t.string "number"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_marketplaces_on_category_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "solarworks", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "description"
    t.decimal "price"
    t.string "image_url"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_solarworks_on_category_id"
  end

  create_table "tonycycles", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.date "year"
    t.string "gear_type"
    t.integer "number_of_wheels"
    t.decimal "price"
    t.boolean "purchased"
    t.string "image_url"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_tonycycles_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "adeapartments", "categories"
  add_foreign_key "dreamscomputers", "categories"
  add_foreign_key "marketplaces", "categories"
  add_foreign_key "posts", "users"
  add_foreign_key "solarworks", "categories"
  add_foreign_key "tonycycles", "categories"
end
