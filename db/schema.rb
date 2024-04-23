# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_04_22_192851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "layouts", force: :cascade do |t|
    t.float "sqft"
    t.bigint "technology_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "layout_image"
    t.index ["technology_id"], name: "index_layouts_on_technology_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "city"
    t.string "street"
    t.integer "number"
    t.integer "design_unit"
    t.integer "flow_rate"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "water_source"
    t.text "notes"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.float "sqft"
    t.text "unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "test_holes", force: :cascade do |t|
    t.integer "load_rate"
    t.integer "ledge_depth"
    t.integer "shwt"
    t.bigint "property_id", null: false
    t.datetime "date"
    t.integer "test_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_test_holes_on_property_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "layouts", "technologies"
  add_foreign_key "properties", "users"
  add_foreign_key "test_holes", "properties"
end
