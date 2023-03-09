class CreateDesignatedFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :designated_facilities do |t|
      t.string :type, null: false, limit: 20
      t.string :name, null: false, limit: 20
      t.string :address, null: false, limit: 25
      t.string :phone, null: false
      t.string :epa_id, null: false, limit: 15

      t.timestamps
    end
  end
end
