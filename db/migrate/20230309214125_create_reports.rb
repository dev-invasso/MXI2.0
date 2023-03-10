class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.decimal :hotel_cost, precision: 10, scale: 2, default: 0.0
      t.decimal :food_cost, precision: 10, scale: 2, default: 0.0
      t.decimal :car_cost, precision: 10, scale: 2, default: 0.0
      t.decimal :msw_cost, precision: 10, scale: 2, default: 0.0
      t.decimal :disposal_cost, precision: 10, scale: 2, default: 0.0
      t.decimal :transport_cost, precision: 10, scale: 2, default: 0.0
      t.decimal :car_count_cost, precision: 10, scale: 2, default: 0.0
      t.decimal :billing_cost, precision: 10, scale: 2, default: 0.0
      t.integer :portajon_q, default: 0
      t.integer :forklift_q, default: 0
      t.integer :truck_rental_q, default: 0
      t.integer :supply_trailer_q, default: 0
      t.integer :tag_along_q, default: 0
      t.decimal :mile_cost, precision: 10, scale: 2, default: 0.0
      t.decimal :event_billing_cost, precision: 10, scale: 2, default: 0.0
      t.text :supply_note
      t.text :car_note
      t.decimal :total_mile_cost, precision: 10, scale: 2, default: 0.0
      t.string :invoice
      t.boolean :is_bond, default: true
      t.integer :forklift_rental_q, default: 0
      t.integer :car_rental_q, default: 0
      t.integer :trash_roll_off, default: 0
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
