class CreateTransporters < ActiveRecord::Migration[7.0]
  def change
    create_table :transporters do |t|
      t.string :transporter_type, null: false, limit: 20
      t.string :transporter_name, null: false, limit: 20
      t.string :transporter_epa_id, null: false, limit: 15

      t.timestamps
    end
  end
end
