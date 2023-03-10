class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false, limit: 20
      t.integer :phone, null: false, limit: 8
      t.string :email, null: false, limit: 25
      t.string :city, null: false, limit: 20
      t.string :state, null: false, limit: 2
      t.string :zip, null: false, limit: 5
      t.string :company_name, null: false, limit: 30
      t.string :company_contact_name, limit: 25
      t.string :company_phone, null: false, limit: 8
      t.string :billing_method, null: false, limit: 10
      t.text :they_dont_accept, limit: 25, array: true
      t.boolean :is_driver_certified, null: false, default: false
      t.boolean :cod, null: false, default: false
      t.string :is_mxi_the_generator,null: false, default: "yes"

      t.timestamps
    end
  end
end
