class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false, limit: 100
      t.string :last_name, null: false, limit: 100
      t.string :encrypted_password, null: false, limit: 255
      t.boolean :renew_password
      t.string :avatar, limit: 255
      t.string :email, null: false, limit: 255

      t.timestamps
    end
  end
end
