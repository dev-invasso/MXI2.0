class CreateEventSetups < ActiveRecord::Migration[7.0]
  def change
    create_table :event_setups do |t|
      t.date :date, null: false
      t.time :job_hours_to, null: false
      t.time :job_hours_from, null: false
      t.integer :staff_projection, null: false
      t.time :time_on_site, null: false
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
