class CreateDriverApplicationAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :driver_application_addresses do |t|
      t.string :address_type, null: false, limit: 255
      t.string :address_line1, null: false, limit: 255
      t.string :address_line2, limit: 255
      t.string :city, null: false, limit: 255
      t.string :state, null: false, limit: 255
      t.string :zip_code, null: false, limit: 10
      t.date :start_date, null: false
      t.references :driver_application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
