class CreateCustomerContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_contracts do |t|
      t.date :contract_start_date, null: false
      t.date :contract_end_date, null: false
      t.boolean :contract_notification_send, null: false, default: false
      t.references :customer, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
