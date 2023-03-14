class CreateDriverApplicationBankAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :driver_application_bank_accounts do |t|
      t.string :account_type, null: false, limit: 255
      t.string :routing_number, null: false, limit: 255
      t.string :account_number, null: false, limit: 255
      t.string :amount_type, null: false, limit: 255
      t.references :driver_application, null: false, foreign_key: true

      t.timestamps
    end

    add_index :driver_application_bank_accounts, :routing_number, unique: true
  end
end
