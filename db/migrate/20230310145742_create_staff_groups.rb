class CreateStaffGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_groups do |t|
      t.string :name, null: false, max_length: 100

      t.timestamps
    end
  end
end
