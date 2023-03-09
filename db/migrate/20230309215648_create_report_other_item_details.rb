class CreateReportOtherItemDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :report_other_item_details do |t|
      t.string :name, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
