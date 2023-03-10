class CreateDriverApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :driver_applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :gender
      t.string :ss_number
      t.string :martial_status
      t.boolean :personal_details_completed, default: false
      t.string :driver_license_state
      t.string :driver_license_number
      t.string :driver_license_class
      t.string :driver_license_endorsements
      t.string :driver_license_restrictions
      t.string :driver_license_type
      t.string :driver_license_issuing_state
      t.date :driver_license_expiration_date
      t.string :driver_license_denied
      t.text :driver_license_denied_details
      t.string :driver_license_suspended
      t.text :driver_license_suspended_details
      t.boolean :driver_license_voilation_certification
      t.boolean :license_details_completed, default: false
      t.integer :highest_grade
      t.integer :high_school
      t.integer :college
      t.string :last_school_name
      t.string :last_school_city
      t.string :last_school_state
      t.boolean :education_details_completed, default: false
      t.string :straight_truck_experience
      t.string :straight_truck_experience_type
      t.date :straight_truck_experience_date_from
      t.date :straight_truck_experience_date_to
      t.string :straight_truck_experience_miles
      t.string :tractor_and_semi_trailer_experience
      t.string :tractor_and_semi_trailer_experience_type
      t.date :tractor_and_semi_trailer_experience_date_from
      t.date :tractor_and_semi_trailer_experience_date_to
      t.string :tractor_and_semi_trailer_experience_miles
      t.string :truck_two_trailer_experience
      t.string :truck_two_trailer_experience_type
      t.date :truck_two_trailerk_experience_date_from
      t.date :truck_two_trailer_experience_date_to
      t.string :truck_two_trailer_experience_miles
      t.string :truck_three_trailer_experience
      t.string :truck_three_trailer_experience_type
      t.date :truck_three_trailer_experience_date_from
      t.date :truck_three_trailer_experience_date_to
      t.string :truck_three_trailer_experience_miles
      t.string :motorcoach_bus_8_experience
      t.string :motorcoach_bus_8_experience_type
      t.date :motorcoach_bus_8_experience_date_from
      t.date :motorcoach_bus_8_experience_date_to
      t.string :motorcoach_bus_8_experience_miles
      t.string :motorcoach_bus_15_experience
      t.string :motorcoach_bus_15_experience_type
      t.date :motorcoach_bus_15_experience_date_from
      t.date :motorcoach_bus_15_experience_date_to
      t.string :motorcoach_bus_15_experience_miles
      t.string :other_class_of_equipment
      t.string :state_operated_in_last_5_years
      t.string :special_driver_training_courses
      t.string :safe_driving_awards
      t.boolean :experience_details_completed, default: false
      t.boolean :employment_details_completed, default: false
      t.boolean :accident_history
      t.date :last_accident_date
      t.string :last_accident_nature
      t.string :last_accident_fatalities
      t.string :last_accident_injuries
      t.string :last_accident_hazardous_material_spill
      t.date :next_accident_date
      t.string :next_accident_nature
      t.string :next_accident_fatalities
      t.string :next_accident_injuries
      t.string :next_accident_hazardous_material_spill
      t.date :second_accident_date
      t.string :second_accident_nature
      t.string :second_accident_fatalities
      t.string :second_accident_injuries
      t.string :second_accident_hazardous_material_spill
      t.boolean :is_traffic_conviction, null: false
      t.boolean :accident_details_completed, default: false
      t.string :legal_right_to_work, null: false
      t.string :proof_of_age, null: false
      t.string :work_in_mxi_before, null: false
      t.string :work_in_mxi_before_place, null: false
      t.date :work_in_mxi_before_date_from, null: false
      t.date :work_in_mxi_before_date_to, null: false
      t.string :work_in_mxi_before_position, null: false
      t.string :work_in_mxi_before_leaving_reason, null: false
      t.string :employed_now, null: false
      t.string :leaving_last_employment, null: false
      t.string :expected_pay_rate, null: false
      t.string :bonded, null: false
      t.string :bonding_company, null: false
      t.string :convicted_of_felony, null: false
      t.string :convicted_of_felony_explanation, null: false
      t.string :unable_to_perform_job, null: false
      t.string :unable_to_perform_job_explanation, null: false
      t.boolean :general_details_completed, default: false
      t.string :clp_cdl_application_holder, null: false
      t.string :driver_id_verified_by, null: false
      t.date :medical_card_expiration_date, null: false
      t.string :ever_had_surgery, null: false
      t.string :surgery_list, null: false
      t.string :taking_medication, null: false
      t.string :medication_list, null: false
      t.string :head_brain_injury, null: false
      t.string :seizures_epilepsy, null: false
      t.string :eye_problem, null: false
      t.string :heart_problem, null: false
      t.string :other_heart_problem, null: false
      t.string :high_blood_presure, null: false
      t.string :high_cholestrol, null: false
      t.string :breathing_problem, null: false
      t.string :lung_disease, null: false
      t.string :kidney_problem, null: false
      t.string :stomach_problem, null: false
      t.string :blood_sugar_problem, null: false
      t.string :mental_health_problem, null: false
      t.string :fainting_problem, null: false
      t.string :memory_loss_problem, null: false
      t.string :weight_loss_problem, null: false
      t.string :stroke_problem, null: false
      t.string :missing_arm_leg, null: false
      t.string :neck_problem, null: false
      t.string :bone_problem, null: false
      t.string :bleeding_problem, null: false
      t.string :cancer, null: false
      t.string :chronic_problem, null: false
      t.string :sleep_problem, null: false
      t.string :sleep_test, null: false
      t.string :night_at_hospital, null: false
      t.string :broke_bone, null: false
      t.string :used_tobacco, null: false
      t.string :drinking_alchol, null: false
      t.string :use_illegal_substance, null: false
      t.string :failed_drug_test, null: true
      t.string :any_other_problem, null: true
      t.string :any_other_problem_list, null: true
      t.boolean :medical_details_completed, null: false, default: false
      t.boolean :payroll_details_completed, null: false, default: false
      t.string :emergency_contact_1, null: true
      t.string :emergency_contact_2, null: true
      t.string :emergency_contact_3, null: true
      t.string :emergency_contact_4, null: true
      t.string :status, null: true
      t.bigint :app_user_id, null: true
      t.string :work_in_mxi_before_pay_rate, null: true
      t.string :contact_1_phone, null: true
      t.string :contact_2_phone, null: true
      t.string :contact_1_relation, null: true
      t.string :contact_2_relation, null: true
      t.string :ear_problem, null: true
      t.date :birthday, null: true
      t.string :medical_card, null: true
      t.string :medical_card_1, null: true
      t.string :driver_license_1, null: true
      t.string :driver_license, null: true
      t.string :social_security, null: true
      t.string :social_security_1, null: true
      t.string :signature, null: true
      t.references :staff_group, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
