class CreateDriverTrafficConvictions < ActiveRecord::Migration[7.0]
  def change
    create_table :driver_traffic_convictions do |t|
      t.string :location, null: false, limit: 255
      t.date :conviction_date, null: false
      t.string :charge, null: false, limit: 255
      t.string :penalty, null: false, limit: 255
      t.references :driver_application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
