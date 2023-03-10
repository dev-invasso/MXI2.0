class CreateCoreSupplies < ActiveRecord::Migration[7.0]
  def change
    create_table :core_supplies do |t|
      t.decimal :price, precision: 10, scale: 2
      t.references :supply_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
