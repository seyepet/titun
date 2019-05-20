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

ActiveRecord::Schema.define(version: 2019_05_20_140254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.string "phone_number"
    t.text "body"
    t.string "state"
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
    t.string "Last_Name"
    t.string "First_Name"
    t.string "Email"
    t.string "Phone_Number"
    t.string "Street_Address"
    t.string "Street_Address2"
    t.string "Product_Information"
    t.string "Product_Price"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "rofimachines", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "description"
    t.decimal "price"
    t.string "image_url"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_rofimachines_on_category_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "adeapartments", "categories"
  add_foreign_key "dreamscomputers", "categories"
  add_foreign_key "marketplaces", "categories"
  add_foreign_key "posts", "users"
  add_foreign_key "rofimachines", "categories"
  add_foreign_key "solarworks", "categories"
  add_foreign_key "tonycycles", "categories"
end
