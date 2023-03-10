class CreateCoreSupplyLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :core_supply_line_items do |t|
      t.decimal :price, precision: 10, scale: 2
      t.references :core_supply, null: false, foreign_key: true
      t.references :line_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
