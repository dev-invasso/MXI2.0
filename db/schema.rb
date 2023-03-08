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

ActiveRecord::Schema[7.0].define(version: 2023_03_08_002059) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_contracts", force: :cascade do |t|
    t.date "contract_start_date", null: false
    t.date "contract_end_date", null: false
    t.boolean "contract_notification_send", default: false, null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_contracts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.bigint "phone", null: false
    t.string "email", limit: 25, null: false
    t.string "city", limit: 20, null: false
    t.string "state", limit: 2, null: false
    t.string "zip", limit: 5, null: false
    t.string "company_name", limit: 30, null: false
    t.string "company_contact_name", limit: 25
    t.string "company_phone", limit: 8, null: false
    t.string "billing_method", limit: 10, null: false
    t.text "they_dont_accept", array: true
    t.boolean "is_driver_certified", default: false, null: false
    t.boolean "cod", default: false, null: false
    t.string "is_mxi_the_generator", default: "yes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generators", force: :cascade do |t|
    t.string "generator_name", limit: 20, null: false
    t.string "generator_address", limit: 50, null: false
    t.string "generator_phone", limit: 14, null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_generators_on_customer_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "contact_name", limit: 25, null: false
    t.string "contact_phone", limit: 14, null: false
    t.string "epa_id", limit: 20, null: false
    t.string "city", limit: 20, null: false
    t.string "state", limit: 2, null: false
    t.string "zip", limit: 5, null: false
    t.string "address", limit: 100, null: false
    t.decimal "longitude", precision: 10, scale: 6, null: false
    t.decimal "latitude", precision: 10, scale: 6, null: false
    t.date "job_hours_from", null: false
    t.date "job_hours_to", null: false
    t.bigint "car_projection", default: 0
    t.integer "food_vendor_id", default: 0
    t.string "image", limit: 100, default: [], array: true
    t.string "supply_source", limit: 20, default: "MXIVA"
    t.string "supply_notes", limit: 100, default: ""
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_sites_on_customer_id"
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "price", null: false
    t.bigint "supply_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supply_category_id"], name: "index_supplies_on_supply_category_id"
  end

  create_table "supply_categories", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customer_contracts", "customers"
  add_foreign_key "generators", "customers"
  add_foreign_key "sites", "customers"
  add_foreign_key "supplies", "supply_categories"
end
