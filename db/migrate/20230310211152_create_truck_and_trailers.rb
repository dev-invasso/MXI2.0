class CreateTruckAndTrailers < ActiveRecord::Migration[7.0]
  def change
    create_table :truck_and_trailers do |t|
      t.string :vehicle_type, null: false
      t.string :vehicle_name, null: false
      t.string :vehicle_number, null: false

      t.timestamps
    end
  end
end
