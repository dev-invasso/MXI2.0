class CreateEventStaffLists < ActiveRecord::Migration[7.0]
  def change
    create_table :event_staff_lists do |t|
      t.references :event, null: false, foreign_key: true
      t.references :staff_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
