class CreateSites < ActiveRecord::Migration[7.0]
  def change
    create_table :sites do |t|
      t.string :name, null: false, limit: 50
      t.string :contact_name, null: false, limit: 25
      t.string :contact_phone, null: false, limit: 14
      t.string :epa_id, null: false, limit: 20
      t.string :city, null: false, limit: 20
      t.string :state, null: false, limit: 2
      t.string :zip, null: false, limit: 5
      t.string :address, null: false, limit: 100
      t.decimal :longitude, null: false, precision: 10, scale: 6
      t.decimal :latitude, null: false, precision: 10, scale: 6
      t.date :job_hours_from, null: false
      t.date :job_hours_to, null: false
      t.integer :car_projection, default: 0, limit: 5
      t.integer :food_vendor_id, default: 0
      t.string :image, limit: 100, array: true, default: []
      t.string :supply_source, default: "MXIVA", limit: 20
      t.string :supply_notes, limit: 100, default: ""
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
