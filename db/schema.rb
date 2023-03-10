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

ActiveRecord::Schema[7.0].define(version: 2023_03_10_211152) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "core_supplies", force: :cascade do |t|
    t.decimal "price", precision: 10, scale: 2
    t.bigint "supply_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supply_category_id"], name: "index_core_supplies_on_supply_category_id"
  end

  create_table "core_supply_line_items", force: :cascade do |t|
    t.decimal "price", precision: 10, scale: 2
    t.bigint "core_supply_id", null: false
    t.bigint "line_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["core_supply_id"], name: "index_core_supply_line_items_on_core_supply_id"
    t.index ["line_item_id"], name: "index_core_supply_line_items_on_line_item_id"
  end

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

  create_table "designated_facilities", force: :cascade do |t|
    t.string "type", limit: 20, null: false
    t.string "name", limit: 20, null: false
    t.string "address", limit: 25, null: false
    t.string "phone", null: false
    t.string "epa_id", limit: 15, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "driver_application_addresses", force: :cascade do |t|
    t.string "address_type", limit: 255, null: false
    t.string "address_line1", limit: 255, null: false
    t.string "address_line2", limit: 255
    t.string "city", limit: 255, null: false
    t.string "state", limit: 255, null: false
    t.string "zip_code", limit: 10, null: false
    t.date "start_date", null: false
    t.bigint "driver_application_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_application_id"], name: "index_driver_application_addresses_on_driver_application_id"
  end

  create_table "driver_application_bank_accounts", force: :cascade do |t|
    t.string "account_type", limit: 255, null: false
    t.string "routing_number", limit: 255, null: false
    t.string "account_number", limit: 255, null: false
    t.string "amount_type", limit: 255, null: false
    t.bigint "driver_application_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_application_id"], name: "index_driver_application_bank_accounts_on_driver_application_id"
    t.index ["routing_number"], name: "index_driver_application_bank_accounts_on_routing_number", unique: true
  end

  create_table "driver_application_histories", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "address", limit: 255, null: false
    t.string "city", limit: 255, null: false
    t.string "state", limit: 255, null: false
    t.string "zip_code", limit: 10, null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.string "position", limit: 255, null: false
    t.string "salary", limit: 255, null: false
    t.string "contact_person", limit: 255, null: false
    t.string "contact_person_phone", limit: 20, null: false
    t.string "leaving_reason", limit: 255, null: false
    t.string "subject_to_fmcsr", limit: 255, null: false
    t.string "is_49_cfr", limit: 255, null: false
    t.bigint "driver_application_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_application_id"], name: "index_driver_application_histories_on_driver_application_id"
  end

  create_table "driver_applications", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "gender"
    t.string "ss_number"
    t.string "martial_status"
    t.boolean "personal_details_completed", default: false
    t.string "driver_license_state"
    t.string "driver_license_number"
    t.string "driver_license_class"
    t.string "driver_license_endorsements"
    t.string "driver_license_restrictions"
    t.string "driver_license_type"
    t.string "driver_license_issuing_state"
    t.date "driver_license_expiration_date"
    t.string "driver_license_denied"
    t.text "driver_license_denied_details"
    t.string "driver_license_suspended"
    t.text "driver_license_suspended_details"
    t.boolean "driver_license_voilation_certification"
    t.boolean "license_details_completed", default: false
    t.integer "highest_grade"
    t.integer "high_school"
    t.integer "college"
    t.string "last_school_name"
    t.string "last_school_city"
    t.string "last_school_state"
    t.boolean "education_details_completed", default: false
    t.string "straight_truck_experience"
    t.string "straight_truck_experience_type"
    t.date "straight_truck_experience_date_from"
    t.date "straight_truck_experience_date_to"
    t.string "straight_truck_experience_miles"
    t.string "tractor_and_semi_trailer_experience"
    t.string "tractor_and_semi_trailer_experience_type"
    t.date "tractor_and_semi_trailer_experience_date_from"
    t.date "tractor_and_semi_trailer_experience_date_to"
    t.string "tractor_and_semi_trailer_experience_miles"
    t.string "truck_two_trailer_experience"
    t.string "truck_two_trailer_experience_type"
    t.date "truck_two_trailerk_experience_date_from"
    t.date "truck_two_trailer_experience_date_to"
    t.string "truck_two_trailer_experience_miles"
    t.string "truck_three_trailer_experience"
    t.string "truck_three_trailer_experience_type"
    t.date "truck_three_trailer_experience_date_from"
    t.date "truck_three_trailer_experience_date_to"
    t.string "truck_three_trailer_experience_miles"
    t.string "motorcoach_bus_8_experience"
    t.string "motorcoach_bus_8_experience_type"
    t.date "motorcoach_bus_8_experience_date_from"
    t.date "motorcoach_bus_8_experience_date_to"
    t.string "motorcoach_bus_8_experience_miles"
    t.string "motorcoach_bus_15_experience"
    t.string "motorcoach_bus_15_experience_type"
    t.date "motorcoach_bus_15_experience_date_from"
    t.date "motorcoach_bus_15_experience_date_to"
    t.string "motorcoach_bus_15_experience_miles"
    t.string "other_class_of_equipment"
    t.string "state_operated_in_last_5_years"
    t.string "special_driver_training_courses"
    t.string "safe_driving_awards"
    t.boolean "experience_details_completed", default: false
    t.boolean "employment_details_completed", default: false
    t.boolean "accident_history"
    t.date "last_accident_date"
    t.string "last_accident_nature"
    t.string "last_accident_fatalities"
    t.string "last_accident_injuries"
    t.string "last_accident_hazardous_material_spill"
    t.date "next_accident_date"
    t.string "next_accident_nature"
    t.string "next_accident_fatalities"
    t.string "next_accident_injuries"
    t.string "next_accident_hazardous_material_spill"
    t.date "second_accident_date"
    t.string "second_accident_nature"
    t.string "second_accident_fatalities"
    t.string "second_accident_injuries"
    t.string "second_accident_hazardous_material_spill"
    t.boolean "is_traffic_conviction", null: false
    t.boolean "accident_details_completed", default: false
    t.string "legal_right_to_work", null: false
    t.string "proof_of_age", null: false
    t.string "work_in_mxi_before", null: false
    t.string "work_in_mxi_before_place", null: false
    t.date "work_in_mxi_before_date_from", null: false
    t.date "work_in_mxi_before_date_to", null: false
    t.string "work_in_mxi_before_position", null: false
    t.string "work_in_mxi_before_leaving_reason", null: false
    t.string "employed_now", null: false
    t.string "leaving_last_employment", null: false
    t.string "expected_pay_rate", null: false
    t.string "bonded", null: false
    t.string "bonding_company", null: false
    t.string "convicted_of_felony", null: false
    t.string "convicted_of_felony_explanation", null: false
    t.string "unable_to_perform_job", null: false
    t.string "unable_to_perform_job_explanation", null: false
    t.boolean "general_details_completed", default: false
    t.string "clp_cdl_application_holder", null: false
    t.string "driver_id_verified_by", null: false
    t.date "medical_card_expiration_date", null: false
    t.string "ever_had_surgery", null: false
    t.string "surgery_list", null: false
    t.string "taking_medication", null: false
    t.string "medication_list", null: false
    t.string "head_brain_injury", null: false
    t.string "seizures_epilepsy", null: false
    t.string "eye_problem", null: false
    t.string "heart_problem", null: false
    t.string "other_heart_problem", null: false
    t.string "high_blood_presure", null: false
    t.string "high_cholestrol", null: false
    t.string "breathing_problem", null: false
    t.string "lung_disease", null: false
    t.string "kidney_problem", null: false
    t.string "stomach_problem", null: false
    t.string "blood_sugar_problem", null: false
    t.string "mental_health_problem", null: false
    t.string "fainting_problem", null: false
    t.string "memory_loss_problem", null: false
    t.string "weight_loss_problem", null: false
    t.string "stroke_problem", null: false
    t.string "missing_arm_leg", null: false
    t.string "neck_problem", null: false
    t.string "bone_problem", null: false
    t.string "bleeding_problem", null: false
    t.string "cancer", null: false
    t.string "chronic_problem", null: false
    t.string "sleep_problem", null: false
    t.string "sleep_test", null: false
    t.string "night_at_hospital", null: false
    t.string "broke_bone", null: false
    t.string "used_tobacco", null: false
    t.string "drinking_alchol", null: false
    t.string "use_illegal_substance", null: false
    t.string "failed_drug_test"
    t.string "any_other_problem"
    t.string "any_other_problem_list"
    t.boolean "medical_details_completed", default: false, null: false
    t.boolean "payroll_details_completed", default: false, null: false
    t.string "emergency_contact_1"
    t.string "emergency_contact_2"
    t.string "emergency_contact_3"
    t.string "emergency_contact_4"
    t.string "status"
    t.bigint "app_user_id"
    t.string "work_in_mxi_before_pay_rate"
    t.string "contact_1_phone"
    t.string "contact_2_phone"
    t.string "contact_1_relation"
    t.string "contact_2_relation"
    t.string "ear_problem"
    t.date "birthday"
    t.string "medical_card"
    t.string "medical_card_1"
    t.string "driver_license_1"
    t.string "driver_license"
    t.string "social_security"
    t.string "social_security_1"
    t.string "signature"
    t.bigint "staff_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_group_id"], name: "index_driver_applications_on_staff_group_id"
  end

  create_table "driver_traffic_convictions", force: :cascade do |t|
    t.string "location", limit: 255, null: false
    t.date "conviction_date", null: false
    t.string "charge", limit: 255, null: false
    t.string "penalty", limit: 255, null: false
    t.bigint "driver_application_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_application_id"], name: "index_driver_traffic_convictions_on_driver_application_id"
  end

  create_table "driver_violation_certificates", force: :cascade do |t|
    t.date "violation_date", null: false
    t.string "offense", limit: 255, null: false
    t.string "location", limit: 255, null: false
    t.string "vehicle_type", limit: 255, null: false
    t.bigint "driver_application_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_application_id"], name: "index_driver_violation_certificates_on_driver_application_id"
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

  create_table "event_setups", force: :cascade do |t|
    t.date "date", null: false
    t.time "job_hours_to", null: false
    t.time "job_hours_from", null: false
    t.integer "staff_projection", null: false
    t.time "time_on_site", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_setups_on_event_id"
  end

  create_table "event_staff_lists", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "staff_member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_staff_lists_on_event_id"
    t.index ["staff_member_id"], name: "index_event_staff_lists_on_staff_member_id"
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

  create_table "hashtags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_capabilities", force: :cascade do |t|
    t.string "capability", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manifest_line_items", force: :cascade do |t|
    t.string "shipping_name", limit: 50, null: false
    t.string "label_type", limit: 50, null: false
    t.integer "number_of_labels", limit: 2, null: false
    t.bigint "core_supply_id", null: false
    t.bigint "line_item_id", null: false
    t.bigint "manifest_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["core_supply_id"], name: "index_manifest_line_items_on_core_supply_id"
    t.index ["line_item_id"], name: "index_manifest_line_items_on_line_item_id"
    t.index ["manifest_id"], name: "index_manifest_line_items_on_manifest_id"
  end

  create_table "manifest_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manifests", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.string "relatable", limit: 255, null: false
    t.integer "relatable_id", null: false
    t.bigint "manifest_type_id", null: false
    t.bigint "transporter_id", null: false
    t.bigint "designated_facility_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["designated_facility_id"], name: "index_manifests_on_designated_facility_id"
    t.index ["manifest_type_id"], name: "index_manifests_on_manifest_type_id"
    t.index ["transporter_id"], name: "index_manifests_on_transporter_id"
  end

  create_table "meetups", force: :cascade do |t|
    t.string "address", limit: 50, null: false
    t.datetime "date_time", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_meetups_on_event_id"
  end

  create_table "referral_bonus", force: :cascade do |t|
    t.decimal "bonus_amount", precision: 10, scale: 2, null: false
    t.boolean "paid", default: false, null: false
    t.bigint "referred_staff_member_id", null: false
    t.bigint "referrer_staff_member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["referred_staff_member_id"], name: "index_referral_bonus_on_referred_staff_member_id"
    t.index ["referrer_staff_member_id"], name: "index_referral_bonus_on_referrer_staff_member_id"
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

  create_table "staff_groups", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_job_capabilities", force: :cascade do |t|
    t.boolean "capable", null: false
    t.bigint "job_capability_id", null: false
    t.bigint "staff_member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_capability_id"], name: "index_staff_job_capabilities_on_job_capability_id"
    t.index ["staff_member_id"], name: "index_staff_job_capabilities_on_staff_member_id"
  end

  create_table "staff_members", force: :cascade do |t|
    t.string "hire_type", null: false
    t.boolean "per_hour", default: false, null: false
    t.decimal "pay_rate", precision: 8, scale: 2, null: false
    t.string "referred_by", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.string "address", null: false
    t.decimal "longitude", precision: 10, scale: 6, null: false
    t.decimal "latitude", precision: 10, scale: 6, null: false
    t.boolean "hazwoper", default: false, null: false
    t.boolean "bachelor_degree", default: false, null: false
    t.boolean "yearly_training", default: false, null: false
    t.date "training_date"
    t.string "received_by", default: "sms", null: false
    t.boolean "is_new", default: false, null: false
    t.boolean "is_paper_work_in", default: false, null: false
    t.boolean "is_active", default: true, null: false
    t.string "shirt_size", null: false
    t.datetime "start_date", null: false
    t.string "hashtags", default: [], null: false, array: true
    t.text "notes", null: false
    t.boolean "status"
    t.bigint "staff_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_group_id"], name: "index_staff_members_on_staff_group_id"
  end

  create_table "staff_shirts", force: :cascade do |t|
    t.boolean "is_received", default: false, null: false
    t.bigint "staff_member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_staff_shirts_on_staff_member_id"
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

  create_table "truck_and_trailers", force: :cascade do |t|
    t.string "vehicle_type", null: false
    t.string "vehicle_name", null: false
    t.string "vehicle_number", null: false
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

  add_foreign_key "core_supplies", "supply_categories"
  add_foreign_key "core_supply_line_items", "core_supplies"
  add_foreign_key "core_supply_line_items", "line_items"
  add_foreign_key "customer_contracts", "customers"
  add_foreign_key "customers", "users"
  add_foreign_key "driver_application_addresses", "driver_applications"
  add_foreign_key "driver_application_bank_accounts", "driver_applications"
  add_foreign_key "driver_application_histories", "driver_applications"
  add_foreign_key "driver_applications", "staff_groups"
  add_foreign_key "driver_traffic_convictions", "driver_applications"
  add_foreign_key "driver_violation_certificates", "driver_applications"
  add_foreign_key "equipment_assignments", "equipment"
  add_foreign_key "event_setups", "events"
  add_foreign_key "event_staff_lists", "events"
  add_foreign_key "event_staff_lists", "staff_members"
  add_foreign_key "events", "customers"
  add_foreign_key "events", "sites"
  add_foreign_key "manifest_line_items", "core_supplies"
  add_foreign_key "manifest_line_items", "line_items"
  add_foreign_key "manifest_line_items", "manifests"
  add_foreign_key "manifests", "designated_facilities"
  add_foreign_key "manifests", "manifest_types"
  add_foreign_key "manifests", "transporters"
  add_foreign_key "meetups", "events"
  add_foreign_key "referral_bonus", "staff_members", column: "referred_staff_member_id"
  add_foreign_key "referral_bonus", "staff_members", column: "referrer_staff_member_id"
  add_foreign_key "report_a_problems", "users"
  add_foreign_key "report_line_items", "reports"
  add_foreign_key "report_other_item_details", "reports"
  add_foreign_key "reports", "events"
  add_foreign_key "site_vendors", "sites"
  add_foreign_key "site_vendors", "vendors"
  add_foreign_key "sites", "customers"
  add_foreign_key "staff_job_capabilities", "job_capabilities"
  add_foreign_key "staff_job_capabilities", "staff_members"
  add_foreign_key "staff_members", "staff_groups"
  add_foreign_key "staff_shirts", "staff_members"
  add_foreign_key "supplies", "supply_categories"
  add_foreign_key "supply_assignments", "supplies"
  add_foreign_key "user_logs", "users"
  add_foreign_key "user_passwords", "users"
  add_foreign_key "user_roles", "users"
  add_foreign_key "user_sessions", "users"
  add_foreign_key "vendors", "vendor_types"
  add_foreign_key "waste_generators", "customers"
end
