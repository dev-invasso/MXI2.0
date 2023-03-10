class CreateSiteVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :site_vendors do |t|
      t.decimal :price, precision: 10, scale: 2, null: false
      t.references :vendor, null: false, foreign_key: true
      t.references :site,null: false, foreign_key: true

      t.timestamps
    end
  end
end
