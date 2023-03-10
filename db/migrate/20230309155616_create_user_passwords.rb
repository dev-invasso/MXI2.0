class CreateUserPasswords < ActiveRecord::Migration[7.0]
  def change
    create_table :user_passwords do |t|
      t.string :encrypted_password, null: false, limit: 255
      t.string :reset_password_token, limit: 255
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.string :unlock_token, limit: 255
      t.datetime :locked_at
      t.integer :forgot_password_limit, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
