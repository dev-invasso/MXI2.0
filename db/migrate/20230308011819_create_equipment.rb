class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipments do |t|
      t.string :name, limit: 50, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
