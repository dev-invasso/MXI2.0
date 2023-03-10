class CreateMeetups < ActiveRecord::Migration[7.0]
  def change
    create_table :meetups do |t|
      t.string :address, null: false, limit: 50
      t.datetime :date_time, null: false
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
