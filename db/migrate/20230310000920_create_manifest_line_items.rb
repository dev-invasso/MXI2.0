class CreateManifestLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :manifest_line_items do |t|
      t.string :shipping_name, null: false, limit: 50
      t.string :label_type, null: false, limit: 50
      t.integer :number_of_labels, null: false, limit: 2
      t.references :core_supply, null: false, foreign_key: true
      t.references :line_item, null: false, foreign_key: true
      t.references :manifest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
