class CreateDriverApplicationHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :driver_application_histories do |t|
      t.string :name, null: false, limit: 255
      t.string :address, null: false, limit: 255
      t.string :city, null: false, limit: 255
      t.string :state, null: false, limit: 255
      t.string :zip_code, null: false, limit: 10
      t.date :from_date, null: false
      t.date :to_date, null: false
      t.string :position, null: false, limit: 255
      t.string :salary, null: false, limit: 255
      t.string :contact_person, null: false, limit: 255
      t.string :contact_person_phone, null: false, limit: 20
      t.string :leaving_reason, null: false, limit: 255
      t.string :subject_to_fmcsr, null: false, limit: 255
      t.string :is_49_cfr, null: false, limit: 255
      t.references :driver_application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
