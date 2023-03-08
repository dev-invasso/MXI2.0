class CreateEquipmentAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment_assignments do |t|
      t.references :equipment, null: false, foreign_key: true
      t.references :equipmentable, polymorphic: true, null: false
      t.integer :quantity, null: false, limit: 2
      t.float :price, null: false, precision: 10, scale: 2

      t.timestamps
    end
  end
end
