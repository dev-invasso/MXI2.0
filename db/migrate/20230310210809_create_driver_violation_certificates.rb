class CreateDriverViolationCertificates < ActiveRecord::Migration[7.0]
  def change
    create_table :driver_violation_certificates do |t|
      t.date :violation_date, null: false
      t.string :offense, null: false, limit: 255
      t.string :location, null: false, limit: 255
      t.string :vehicle_type, null: false, limit: 255
      t.references :driver_application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
