class CreateVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendors do |t|
      t.string :name, null: false, limit: 20
      t.string :vendor_phone, null: false, limit: 14
      t.string :vendor_email, null: false, limit: 20
      t.string :vendor_contact_name, null: false, limit: 25
      t.decimal :price, precision: 10, scale: 2, null: false
      t.string :notes, null: false, limit: 50
      t.references :vendor_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
