class CreateVendorTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :vendor_types do |t|
      t.string :name, null: false, max_length: 20

      t.timestamps
    end
  end
end
