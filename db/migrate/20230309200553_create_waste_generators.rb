class CreateWasteGenerators < ActiveRecord::Migration[7.0]
  def change
    create_table :waste_generators do |t|
      t.string :generator_name, null: false, limit: 20
      t.string :generator_address, null: false, limit: 50
      t.string :generator_phone, null: false, limit: 14
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
