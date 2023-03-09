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

ActiveRecord::Schema[7.0].define(version: 2023_03_09_233249) do
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
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_assignments", force: :cascade do |t|
    t.bigint "equipment_id", null: false
    t.string "equipmentable_type", null: false
    t.bigint "equipmentable_id", null: false
    t.integer "quantity", limit: 2, null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_equipment_assignments_on_equipment_id"
    t.index ["equipmentable_type", "equipmentable_id"], name: "index_equipment_assignments_on_equipmentable"
  end

  create_table "events", force: :cascade do |t|
    t.string "notes", limit: 50, null: false
    t.integer "staff_projection", null: false
    t.integer "car_projection", null: false
    t.date "event_date", null: false
    t.string "event_type", limit: 20, null: false
    t.time "job_hours_from", null: false
    t.time "job_hours_to", null: false
    t.time "time_on_site", null: false
    t.bigint "priority", null: false
    t.bigint "load_number", null: false
    t.integer "additional_food_count", null: false
    t.boolean "need_meetup", null: false
    t.boolean "need_event_setup", null: false
    t.integer "number_of_travelers", null: false
    t.integer "number_of_rooms", null: false
    t.boolean "need_recurring_event", null: false
    t.bigint "site_id", null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_events_on_customer_id"
    t.index ["site_id"], name: "index_events_on_site_id"
  end

  create_table "report_a_problems", force: :cascade do |t|
    t.string "subject", null: false
    t.string "message", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_report_a_problems_on_user_id"
  end

  create_table "report_line_items", force: :cascade do |t|
    t.string "container", null: false
    t.string "description", null: false
    t.string "container_name", null: false
    t.string "quantity", default: "0", null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.boolean "remove_from_cost", default: false, null: false
    t.boolean "remove_from_internals", default: false, null: false
    t.bigint "report_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_report_line_items_on_report_id"
  end

  create_table "report_other_item_details", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.bigint "report_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_report_other_item_details_on_report_id"
  end

  create_table "reports", force: :cascade do |t|
    t.decimal "hotel_cost", precision: 10, scale: 2, default: "0.0"
    t.decimal "food_cost", precision: 10, scale: 2, default: "0.0"
    t.decimal "car_cost", precision: 10, scale: 2, default: "0.0"
    t.decimal "msw_cost", precision: 10, scale: 2, default: "0.0"
    t.decimal "disposal_cost", precision: 10, scale: 2, default: "0.0"
    t.decimal "transport_cost", precision: 10, scale: 2, default: "0.0"
    t.decimal "car_count_cost", precision: 10, scale: 2, default: "0.0"
    t.decimal "billing_cost", precision: 10, scale: 2, default: "0.0"
    t.integer "portajon_q", default: 0
    t.integer "forklift_q", default: 0
    t.integer "truck_rental_q", default: 0
    t.integer "supply_trailer_q", default: 0
    t.integer "tag_along_q", default: 0
    t.decimal "mile_cost", precision: 10, scale: 2, default: "0.0"
    t.decimal "event_billing_cost", precision: 10, scale: 2, default: "0.0"
    t.text "supply_note"
    t.text "car_note"
    t.decimal "total_mile_cost", precision: 10, scale: 2, default: "0.0"
    t.string "invoice"
    t.boolean "is_bond", default: true
    t.integer "forklift_rental_q", default: 0
    t.integer "car_rental_q", default: 0
    t.integer "trash_roll_off", default: 0
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_reports_on_event_id"
  end

  create_table "site_vendors", force: :cascade do |t|
    t.decimal "price", precision: 10, scale: 2, null: false
    t.bigint "vendor_id", null: false
    t.bigint "site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_site_vendors_on_site_id"
    t.index ["vendor_id"], name: "index_site_vendors_on_vendor_id"
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
    t.string "bathrooms_choice", limit: 10, null: false
    t.string "msw_choice", limit: 10, null: false
    t.string "msw_roll_off", null: false
    t.bigint "car_projection", default: 0
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
    t.float "price", null: false
    t.bigint "supply_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supply_category_id"], name: "index_supplies_on_supply_category_id"
  end

  create_table "supply_assignments", force: :cascade do |t|
    t.string "assignable_type", null: false
    t.bigint "assignable_id", null: false
    t.bigint "supply_id", null: false
    t.integer "quantity", limit: 2, null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignable_type", "assignable_id"], name: "index_supply_assignments_on_assignable"
    t.index ["supply_id"], name: "index_supply_assignments_on_supply_id"
  end

  create_table "supply_categories", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transporters", force: :cascade do |t|
    t.string "transporter_type", limit: 20, null: false
    t.string "transporter_name", limit: 20, null: false
    t.string "transporter_epa_id", limit: 15, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_logs", force: :cascade do |t|
    t.string "exception_class", limit: 255, null: false
    t.string "controller_name", limit: 255, null: false
    t.string "action_name", limit: 255, null: false
    t.text "message", null: false
    t.text "backtrace", null: false
    t.text "environment", null: false
    t.text "request", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_logs_on_user_id"
  end

  create_table "user_passwords", force: :cascade do |t|
    t.string "encrypted_password", limit: 255, null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "unlock_token", limit: 255
    t.datetime "locked_at"
    t.integer "forgot_password_limit", default: 0
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_passwords_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "modul_name"
    t.boolean "create"
    t.boolean "read"
    t.boolean "update"
    t.boolean "delete"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.integer "consumed_timestep", default: 0, null: false
    t.integer "failed_attempts"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", limit: 100, null: false
    t.string "last_name", limit: 100, null: false
    t.string "encrypted_password", limit: 255, null: false
    t.boolean "renew_password"
    t.string "avatar", limit: 255
    t.string "email", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendor_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.string "vendor_phone", limit: 14, null: false
    t.string "vendor_email", limit: 20, null: false
    t.string "vendor_contact_name", limit: 25, null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.string "notes", limit: 50, null: false
    t.bigint "vendor_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendor_type_id"], name: "index_vendors_on_vendor_type_id"
  end

  create_table "waste_generators", force: :cascade do |t|
    t.string "generator_name", limit: 20, null: false
    t.string "generator_address", limit: 50, null: false
    t.string "generator_phone", limit: 14, null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_waste_generators_on_customer_id"
  end

  add_foreign_key "customer_contracts", "customers"
  add_foreign_key "customers", "users"
  add_foreign_key "equipment_assignments", "equipment"
  add_foreign_key "events", "customers"
  add_foreign_key "events", "sites"
  add_foreign_key "report_a_problems", "users"
  add_foreign_key "report_line_items", "reports"
  add_foreign_key "report_other_item_details", "reports"
  add_foreign_key "reports", "events"
  add_foreign_key "site_vendors", "sites"
  add_foreign_key "site_vendors", "vendors"
  add_foreign_key "sites", "customers"
  add_foreign_key "supplies", "supply_categories"
  add_foreign_key "supply_assignments", "supplies"
  add_foreign_key "user_logs", "users"
  add_foreign_key "user_passwords", "users"
  add_foreign_key "user_roles", "users"
  add_foreign_key "user_sessions", "users"
  add_foreign_key "vendors", "vendor_types"
  add_foreign_key "waste_generators", "customers"
end
