class CreateReportLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :report_line_items do |t|
      t.string :container, null: false
      t.string :description, null: false
      t.string :container_name, null: false
      t.string :quantity, null: false, default: "0"
      t.decimal :price, precision: 10, scale: 2, null: false
      t.boolean :remove_from_cost, null: false, default: false
      t.boolean :remove_from_internals, null: false, default: false
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
