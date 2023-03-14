class CreateStaffShirts < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_shirts do |t|
      t.boolean :is_received, null: false, default: false
      t.references :staff_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
