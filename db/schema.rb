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

ActiveRecord::Schema.define(version: 2020_03_09_135824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_items_on_order_id"
    t.index ["recipe_id"], name: "index_items_on_recipe_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street_name"
    t.string "street_number"
    t.string "city"
    t.string "zip_code"
    t.date "order_date"
    t.time "order_hour"
    t.string "state"
    t.string "recipe_sku"
    t.integer "amount_cents", default: 0, null: false
    t.string "checkout_session_id"
    t.index ["recipe_id"], name: "index_orders_on_recipe_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sku"
    t.string "photo_url"
    t.integer "price_cents", default: 0, null: false
    t.string "apport"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.string "doctor"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_reviews_on_recipe_id"
  end

  create_table "scans", force: :cascade do |t|
    t.string "name"
    t.string "product_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_scans_on_user_id"
  end

  create_table "trouble_recipes", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "trouble_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_trouble_recipes_on_recipe_id"
    t.index ["trouble_id"], name: "index_trouble_recipes_on_trouble_id"
  end

  create_table "troubles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "impact"
    t.text "conseils"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "items", "orders"
  add_foreign_key "items", "recipes"
  add_foreign_key "orders", "recipes"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "recipes"
  add_foreign_key "scans", "users"
  add_foreign_key "trouble_recipes", "recipes"
  add_foreign_key "trouble_recipes", "troubles"
end
