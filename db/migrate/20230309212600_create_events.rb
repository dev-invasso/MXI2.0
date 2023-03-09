class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :notes, limit: 50, null: false
      t.integer :staff_projection, null: false
      t.integer :car_projection, null: false
      t.date :event_date, null: false
      t.string :event_type, limit: 20, null: false
      t.time :job_hours_from, null: false
      t.time :job_hours_to, null: false
      t.time :time_on_site, null: false
      t.bigint :priority, null: false
      t.bigint :load_number, null: false
      t.integer :additional_food_count, null: false
      t.boolean :need_meetup, null: false
      t.boolean :need_event_setup, null: false
      t.integer :number_of_travelers, null: false
      t.integer :number_of_rooms, null: false
      t.boolean :need_recurring_event, null: false
      t.references :site, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
