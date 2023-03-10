class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name, limit: 50, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end
