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

ActiveRecord::Schema[7.0].define(version: 2023_03_07_184603) do
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

  add_foreign_key "customer_contracts", "customers"
  add_foreign_key "generators", "customers"
end
