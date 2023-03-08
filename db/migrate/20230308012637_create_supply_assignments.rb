class CreateSupplyAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :supply_assignments do |t|
      t.references :assignable, polymorphic: true, null: false
      t.references :supply, null: false, foreign_key: true
      t.integer :quantity, null: false, limit: 2
      t.float :price, null: false, precision: 10, scale: 2

      t.timestamps
    end
  end
end
