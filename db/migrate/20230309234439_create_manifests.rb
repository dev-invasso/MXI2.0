class CreateManifests < ActiveRecord::Migration[7.0]
  def change
    create_table :manifests do |t|
      t.string :name, null: false, limit: 20
      t.string :relatable, null: false, limit: 255
      t.integer :relatable_id, null: false
      t.references :manifest_type, null: false, foreign_key: true
      t.references :transporter, null: false, foreign_key: true
      t.references :designated_facility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
