class CreateSupplies < ActiveRecord::Migration[7.0]
  def change
    create_table :supplies do |t|
      t.string :name, limit: 50, null: false
      t.float :price, null: false
      t.references :supply_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
