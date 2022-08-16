# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_16_060617) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkins", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "venue_id", null: false
    t.integer "number_of_visits"
    t.boolean "is_public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_checkins_on_user_id"
    t.index ["venue_id"], name: "index_checkins_on_venue_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo_url"
    t.bigint "venue_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_photos_on_venue_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "open_id"
  end

  create_table "venue_categories", force: :cascade do |t|
    t.bigint "venue_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_venue_categories_on_category_id"
    t.index ["venue_id"], name: "index_venue_categories_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "address"
    t.string "phone"
    t.string "name"
    t.datetime "open_time"
    t.datetime "close_time"
    t.string "discount"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "checkins", "users"
  add_foreign_key "checkins", "venues"
  add_foreign_key "photos", "venues"
  add_foreign_key "venue_categories", "categories"
  add_foreign_key "venue_categories", "venues"
end
